{ pkgs, ... }:

{
  imports = [
    ./abaddon.nix
    ./aerc.nix
    ./alacritty.nix
    ./animatch.nix
    ./assorted.nix
    ./audacity.nix
    ./bemenu.nix
    ./bonsai.nix
    ./brave.nix
    ./bubblewrap.nix
    ./calls.nix
    ./cantata.nix
    ./catt.nix
    ./chatty.nix
    ./conky
    ./cozy.nix
    ./dconf.nix
    ./dialect.nix
    ./dino.nix
    ./element-desktop.nix
    ./epiphany.nix
    ./evince.nix
    ./feedbackd.nix
    ./firefox.nix
    ./flare-signal.nix
    ./fontconfig.nix
    ./fractal.nix
    ./frozen-bubble.nix
    ./fwupd.nix
    ./g4music.nix
    ./gajim.nix
    ./geary.nix
    ./git.nix
    ./gnome-feeds.nix
    ./gnome-keyring
    ./gnome-weather.nix
    ./go2tv.nix
    ./gpodder.nix
    ./gthumb.nix
    ./gtkcord4.nix
    ./handbrake.nix
    ./helix.nix
    ./imagemagick.nix
    ./jellyfin-media-player.nix
    ./kdenlive.nix
    ./komikku.nix
    ./koreader
    ./libreoffice.nix
    ./lemoa.nix
    ./loupe.nix
    ./mako.nix
    ./megapixels.nix
    ./mepo.nix
    ./mimeo
    ./mopidy.nix
    ./mpv.nix
    ./msmtp.nix
    ./nautilus.nix
    ./neovim.nix
    ./newsflash.nix
    ./nheko.nix
    ./nicotine-plus.nix
    ./nix-index.nix
    ./notejot.nix
    ./ntfy-sh.nix
    ./obsidian.nix
    ./offlineimap.nix
    ./open-in-mpv.nix
    ./pipewire.nix
    ./planify.nix
    ./portfolio-filemanager.nix
    ./playerctl.nix
    ./rhythmbox.nix
    ./ripgrep.nix
    ./sane-scripts.nix
    ./sfeed.nix
    ./signal-desktop.nix
    ./splatmoji.nix
    ./spot.nix
    ./spotify.nix
    ./steam.nix
    ./stepmania.nix
    ./strings.nix
    ./sublime-music.nix
    ./supertuxkart.nix
    ./sway
    ./sway-autoscaler
    ./swaylock.nix
    ./swaynotificationcenter.nix
    ./tangram.nix
    ./tor-browser.nix
    ./tuba.nix
    ./unl0kr
    ./vlc.nix
    ./waybar
    ./waylock.nix
    ./wike.nix
    ./wine.nix
    ./wireshark.nix
    ./wob
    ./xarchiver.nix
    ./xdg-desktop-portal.nix
    ./xdg-desktop-portal-gtk.nix
    ./xdg-desktop-portal-wlr.nix
    ./xdg-utils.nix
    ./zeal.nix
    ./zecwallet-lite.nix
    ./zsh
  ];

  config = {
    # XXX: this might not be necessary. try removing this and cacert.unbundled (servo)?
    environment.etc."ssl/certs".source = "${pkgs.cacert.unbundled}/etc/ssl/certs/*";

  };
}
