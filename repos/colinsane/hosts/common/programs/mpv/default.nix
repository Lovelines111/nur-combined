# curated mpv mods/scripts/users:
# - <https://github.com/stax76/awesome-mpv>
# mpv docs:
# - <https://mpv.io/manual/master>
# - <https://github.com/mpv-player/mpv/wiki>
# extensions i use:
# - <https://github.com/jonniek/mpv-playlistmanager>
# other extensions that could be useful:
# - list: <https://github.com/stax76/awesome-mpv>
# - list: <https://nudin.github.io/mpv-script-directory/>
# - browse DLNA shares: <https://github.com/chachmu/mpvDLNA>
# - act as a DLNA renderer (sink): <https://github.com/xfangfang/Macast>
# - update watch_later periodically -- not just on exit: <https://gist.github.com/CyberShadow/2f71a97fb85ed42146f6d9f522bc34ef>
#   - <https://github.com/AN3223/dotfiles/blob/master/.config/mpv/scripts/auto-save-state.lua>
# - touch shortcuts (double-tap L/R portions of window to seek, etc): <https://github.com/christoph-heinrich/mpv-touch-gestures>
#   - <https://github.com/omeryagmurlu/mpv-gestures>
# - jellyfin client: <https://github.com/EmperorPenguin18/mpv-jellyfin>
#   - DLNA client (player only: no casting): <https://github.com/chachmu/mpvDLNA>
# - search videos on Youtube: <https://github.com/rozari0/mpv-youtube-search>
#   - <https://github.com/CogentRedTester/mpv-scripts/blob/master/youtube-search.lua>
# - sponsorblock: <https://codeberg.org/jouni/mpv_sponsorblock_minimal>
# - screenshot-to-clipboard: <https://github.com/zc62/mpv-scripts/blob/master/screenshot-to-clipboard.js>
# - mpv-as-image-viewer: <https://github.com/guidocella/mpv-image-config>
# debugging:
# - enter console by pressing backtick.
#   > `set volume 50`     -> sets application volume to 50%
#   > `set ao-volume 50`  -> sets system-wide volume to 50%
#   > `show-text "vol: ${volume}"`  -> get the volume
# - show script output by running mpv with `--msg-level=all=trace`
#   - and then just `print(...)` from lua & it'll show in terminal
#   - requires that mpv.conf NOT include player-operation-mode=pseudo-gui
# - invoke mpv with `--no-config` to have it not read ~/.config/mpv/*
# - press `i` to show decoder info
#
# usage tips:
# - `<` or `>` to navigate prev/next-file-in-folder  (uosc)
# - shift+enter to view the playlist, then arrow-keys to navigate (mpv-playlistmanager)
{ config, lib, pkgs, ... }:

let
  cfg = config.sane.programs.mpv;
  uosc = pkgs.mpvScripts.uosc.overrideAttrs (upstream: {
    version = "5.2.0-unstable-2024-03-13";
    src = lib.warnIf (lib.versionOlder "5.2.0" upstream.version) "uosc outdated; remove patch?" pkgs.fetchFromGitHub {
      owner = "tomasklaen";
      repo = "uosc";
      rev = "6fa34c31d0a5290dee83282205768d15111df7d8";
      hash = "sha256-qxyNZHmH33bKRp4heFSC+RtvSApIfbVFt4otfS351nE=";
    };
    # src = pkgs.fetchFromGitea {
    #   domain = "git.uninsane.org";
    #   owner = "colin";
    #   repo = "uosc";
    #   rev = "dev-sane-5.2.0";
    #   hash = "sha256-lpqk4nnCxDZr/Y7/seM4VyR30fVrDAT4VP7C8n88lvA=";
    # };

    postPatch = (upstream.postPatch or "") + ''
      ### patch so touch controls work well with sway 1.9+
      ### in particular, "mouse.hover" is *always* false for touch events (i guess this is a bug in mpv?)
      ### and a touch release event is always followed by a mouse move to the cursor (that's a sway thing) which doesn't make sense.
      # 1. always listen for mbtn_left events, even before a hover event would activate a zone:
      substituteInPlace src/uosc/lib/cursor.lua \
        --replace-fail \
          "if binding and cursor:collides_with(zone.hitbox)" \
          "if binding"
      # 2. uosc already simulates mouse movements on touch down, but because of the hover handling, they get misunderstood as mouse leaves.
      #    so, bypass the cursor:leave() check.
      substituteInPlace src/uosc/lib/cursor.lua \
        --replace-fail \
          "handle_mouse_pos(nil, mp.get_property_native('mouse-pos'))" \
          "local mpos = mp.get_property_native('mouse-pos')
           cursor:move(mpos.x, mpos.y)
           cursor.hover_raw = mpos.hover"
      # 3. explicitly fire a cursor:leave on touch release, so that all zones are deactivated (and control visibility goes back to default state)
      substituteInPlace src/uosc/lib/cursor.lua \
        --replace-fail \
          "cursor:create_handler('primary_up')" \
          "function(...)
             cursor:trigger('primary_up', ...)
             if not cursor.hover_raw then
               cursor:leave()
             end
           end"
      # 4. sometimes we get a touch movement shortly AFTER touch is released:
      #    detect that and ignore it
      substituteInPlace src/uosc/lib/cursor.lua \
        --replace-fail \
          "cursor:move(mouse.x, mouse.y)" \
          "local last_down = cursor.last_event['primary_down'] or { time = 0 }
           local last_up = cursor.last_event['primary_up'] or { time = 0 }
           if cursor.hover_raw or last_down.time >= last_up.time then cursor:move(mouse.x, mouse.y) end"

      ### patch so that uosc volume control is routed to sane_sysvol.
      ### this is particularly nice for moby, because it avoids the awkwardness that system volume
      ### is hard to adjust while screen is on.
      ### previously i used ao-volume instead of sane_sysvol: but that forced `ao=alsa`
      ### and came with heavy perf penalties (especially when adjusting the volume)
      substituteInPlace src/uosc/main.lua \
        --replace-fail \
          "mp.observe_property('volume'" \
          "mp.observe_property('user-data/sane_sysvol/volume'" \
        --replace-fail \
          "mp.observe_property('mute'" \
          "mp.observe_property('user-data/sane_sysvol/mute'"
      substituteInPlace src/uosc/elements/Volume.lua \
        --replace-fail \
          "mp.commandv('set', 'volume'" \
          "mp.set_property_number('user-data/sane_sysvol/volume'" \
        --replace-fail \
          "mp.set_property_native('volume'" \
          "mp.set_property_number('user-data/sane_sysvol/volume'" \
        --replace-fail \
          "mp.set_property_native('mute'" \
          "mp.set_property_bool('user-data/sane_sysvol/mute'" \
        --replace-fail \
          "mp.commandv('cycle', 'mute')" \
          "mp.set_property_bool('user-data/sane_sysvol/mute', not mp.get_property_bool('user-data/sane_sysvol/mute'))"

      # tweak the top-bar "maximize" button to actually act as a "fullscreen" button.
      substituteInPlace src/uosc/elements/TopBar.lua \
        --replace-fail \
          'get_maximized_command,' \
          '"cycle fullscreen",'
    '';
  });
  mpv-unwrapped = pkgs.mpv-unwrapped.overrideAttrs (upstream: {
    version = "0.37.0-unstable-2024-03-31";
    src = lib.warnIf (lib.versionOlder "0.37.0" upstream.version) "mpv outdated; remove patch?" pkgs.fetchFromGitHub {
      owner = "mpv-player";
      repo = "mpv";
      rev = "4ce4bf1795e6dfd6f1ddf07fb348ce5d191ab1dc";
      hash = "sha256-nOGuHq7SWDAygROV7qHtezDv1AsMpseImI8TVd3F+Oc=";
    };
    patches = [];
  });
in
{
  sane.programs.mpv = {
    packageUnwrapped = pkgs.wrapMpv
      (mpv-unwrapped.override rec {
        # N.B.: populating `self` to `luajit` is necessary for the resulting `lua.withPackages` function to preserve my override.
        # i use enable52Compat in order to get `table.unpack`.
        # i think using `luajit` here instead of `lua` is optional, just i get better perf with it :)
        lua = pkgs.luajit.override { enable52Compat = true; self = lua; };
      })
      {
        scripts = [
          pkgs.mpvScripts.mpris
          pkgs.mpvScripts.mpv-playlistmanager
          uosc
          # pkgs.mpv-uosc-latest
        ];
        # extraMakeWrapperArgs = lib.optionals (cfg.config.vo != null) [
        #   # 2023/08/29: fixes an error where mpv on moby launches with the message
        #   #   "DRM_IOCTL_MODE_CREATE_DUMB failed: Cannot allocate memory"
        #   #   audio still works, and controls, screenshotting, etc -- just not the actual rendering
        #   #
        #   #   this is likely a regression for mpv 0.36.0.
        #   #   the actual error message *appears* to come from the mesa library, but it's tough to trace.
        #   #
        #   # 2024/03/02: no longer necessary, with mesa 23.3.1: <https://github.com/NixOS/nixpkgs/pull/265740>
        #   #
        #   # backend compatibility (2023/10/22):
        #   # run with `--vo=help` to see a list of all output options.
        #   # non-exhaustive (W=works, F=fails, A=audio-only, U=audio+ui only (no video))
        #   # ? null             Null video output
        #   # A (default)
        #   # A dmabuf-wayland   Wayland dmabuf video output
        #   # A libmpv           render API for libmpv  (mpv plays the audio, but doesn't even render a window)
        #   # A vdpau            VDPAU with X11
        #   # F drm              Direct Rendering Manager (software scaling)
        #   # F gpu-next         Video output based on libplacebo
        #   # F vaapi            VA API with X11
        #   # F x11              X11 (software scaling)
        #   # F xv               X11/Xv
        #   # U gpu              Shader-based GPU Renderer
        #   # W caca             libcaca  (terminal rendering)
        #   # W sdl              SDL 2.0 Renderer
        #   # W wlshm            Wayland SHM video output (software scaling)
        #   "--add-flags" "--vo=${cfg.config.vo}"
        # ];
      };

    suggestedPrograms = [
      "blast-to-default"
      "go2tv"
      "sane-die-with-parent"
      "xdg-terminal-exec"
    ];

    sandbox.method = "bwrap";
    sandbox.autodetectCliPaths = true;
    sandbox.net = "all";
    sandbox.whitelistAudio = true;
    sandbox.whitelistDbus = [ "user" ];  #< mpris
    sandbox.whitelistDri = true;  #< mpv has excellent fallbacks to non-DRI, but DRI offers a good 30%-50% reduced CPU
    sandbox.whitelistWayland = true;
    sandbox.extraHomePaths = [
      ".config/mpv"  #< else mpris plugin crashes on launch
      ".local/share/applications"  #< for xdg-terminal-exec (go2tv)
      # it's common for album (or audiobook, podcast) images/lyrics/metadata to live adjacent to the primary file.
      # CLI detection is too poor to pick those up, so expose the common media dirs to the sandbox to make that *mostly* work.
      "Books/local"
      "Books/servo"
      "Music"
      "Videos/gPodder"
      "Videos/local"
      "Videos/servo"
    ];

    persist.byStore.plaintext = [
      # for `watch_later`
      ".local/state/mpv"
    ];
    fs.".config/mpv/scripts/sane_cast/main.lua".symlink.target = ./sane_cast/main.lua;
    fs.".config/mpv/scripts/sane_sysvol/main.lua".symlink.target = ./sane_sysvol/main.lua;
    fs.".config/mpv/scripts/sane_sysvol/non_blocking_popen.lua".symlink.target = ./sane_sysvol/non_blocking_popen.lua;
    fs.".config/mpv/input.conf".symlink.target = ./input.conf;
    fs.".config/mpv/mpv.conf".symlink.target = ./mpv.conf;
    fs.".config/mpv/script-opts/osc.conf".symlink.target = ./osc.conf;
    fs.".config/mpv/script-opts/console.conf".symlink.target = ./console.conf;
    fs.".config/mpv/script-opts/uosc.conf".symlink.target = ./uosc.conf;
    fs.".config/mpv/script-opts/playlistmanager.conf".symlink.target = ./playlistmanager.conf;

    # mime.priority = 200;  # default = 100; 200 means to yield to other apps
    mime.priority = 50;  # default = 100; 50 in order to take precedence over vlc.
    mime.associations."audio/flac" = "mpv.desktop";
    mime.associations."audio/mpeg" = "mpv.desktop";
    mime.associations."audio/x-opus+ogg" = "mpv.desktop";
    mime.associations."audio/x-vorbis+ogg" = "mpv.desktop";
    mime.associations."video/mp4" = "mpv.desktop";
    mime.associations."video/quicktime" = "mpv.desktop";
    mime.associations."video/webm" = "mpv.desktop";
    mime.associations."video/x-flv" = "mpv.desktop";
    mime.associations."video/x-matroska" = "mpv.desktop";
    mime.urlAssociations."^https?://(www.)?youtube.com/watch\?.*v=" = "mpv.desktop";
    mime.urlAssociations."^https?://(www.)?youtube.com/v/" = "mpv.desktop";
    mime.urlAssociations."^https?://(www.)?youtu.be/.+" = "mpv.desktop";
  };
}

