{ config, pkgs, lib, ... }:
let
  nftBin = "${pkgs.nftables}/bin/nft";
  startScript = pkgs.writeScript "setup-tproxy-start" ''
    #!${nftBin} -f
    table ip my_tproxy {}
    flush table ip my_tproxy
    include "${config.sops.secrets.tproxyRule.path}"
  '';
  stopScript = pkgs.writeScript "setup-tproxy-stop" ''
    #!${nftBin} -f
    table ip my_tproxy {}
    delete table ip my_tproxy
  '';
  buildChnroutesSetScript = pkgs.writeShellScript "build-chnroutes-set" ''
    export PATH="$PATH''${PATH:+:}${pkgs.curl}/bin:${pkgs.gnused}/bin"
    ${builtins.readFile ./files/build-chnroutes-set.sh}
  '';
in
{
  users.groups.direct-net = { };

  services.v2ray-next = {
    enable = true;
    package = pkgs.v2ray-next.override {
      assetsDir = config.services.v2ray-rules-dat.dataDir;
    };
    useV5Format = true;
    configFile = config.sops.secrets.v2rayConfig.path;
  };
  systemd.services.v2ray-next = {
    serviceConfig = {
      SupplementaryGroups = [ config.users.groups.direct-net.name ];
    };
  };
  services.v2ray-rules-dat.reloadServices = [ "v2ray-next.service" ];
  sops.secrets.v2rayConfig.restartUnits = [ "v2ray-next.service" ];

  systemd.services.setup-tproxy = {
    bindsTo = [ "v2ray-next.service" ];
    wants = [ "systemd-time-wait-sync.service" "nftables.service" ];
    after = [ "v2ray-next.service" "systemd-time-wait-sync.service" "nftables.service" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = startScript;
      ExecReload = startScript;
      ExecStop = stopScript;
      RemainAfterExit = true;
    };
    reloadIfChanged = true;
  };
  sops.secrets.tproxyRule.reloadUnits = [ "setup-tproxy.service" ];

  systemd.services.update-chnroutes = {
    serviceConfig.Type = "oneshot";
    script = ''
      ${buildChnroutesSetScript}
      ${pkgs.systemd}/bin/systemctl reload setup-tproxy.service
    '';
  };

  systemd.timers.update-chnroutes = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      RandomizedDelaySec = "60min";
      Persistent = true;
    };
  };

  system.activationScripts.update-chnroutes.text = ''
    ${buildChnroutesSetScript} -a
  '';

  systemd.network.networks."11-lo" = {
    name = "lo";
    routes = [{
      routeConfig = {
        Destination = "0.0.0.0/0";
        Table = 100;
        Type = "local";
      };
    }];
    routingPolicyRules = [{
      routingPolicyRuleConfig = {
        FirewallMark = 9;
        Table = 100;
      };
    }];
  };
}
