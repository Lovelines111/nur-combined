{ config, pkgs, lib, ... }: {
  networking.nftables = {
    enable = true;
    rulesetFile = ./files/nftables.nft;
  };
  systemd.services.nftables = {
    wants = [ "systemd-udev-settle.service" ];
    after = [ "systemd-udev-settle.service" ];
  };

  services.resolved.enable = false;
  services.dnsmasq = {
    enable = true;
    extraConfig = ''
      no-resolv
      server=127.0.0.1#5333
      local=/lan/
      interface=intern0
      bind-interfaces
      expand-hosts
      domain=lan
      dhcp-range=192.168.1.3,192.168.1.255,255.255.255.0,24h
      cache-size=0
      no-negcache
    '';
  };

  users.groups.direct-net = { };

  services.v2ray-next = {
    enable = true;
    useV5Format = true;
    configFile = config.sops.secrets.v2rayConfig.path;
  };
  systemd.services.v2ray-next.serviceConfig = {
    SupplementaryGroups = [ config.users.groups.direct-net.name ];
  };
  sops.secrets.v2rayConfig.restartUnits = [ "v2ray-next.service" ];

  # slient redis
  boot.kernel.sysctl."vm.overcommit_memory" = 1;
  services.redis.servers.mosdns = {
    enable = true;
    port = 0;
    unixSocket = "/run/redis-mosdns/redis.sock";
  };

  services.mosdns = {
    enable = true;
    configFile = config.sops.secrets.mosdnsConfig.path;
  };
  sops.secrets.mosdnsConfig.restartUnits = [ "mosdns.service" ];

  systemd.services.mosdns = {
    wantedBy = [ "redis-mosdns.service" ];
    after = [ "redis-mosdns.service" ];
  };
}
