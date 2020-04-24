{ buildFirefoxXpiAddon, fetchurl, stdenv }:
  {
    "adsum-notabs" = buildFirefoxXpiAddon {
      pname = "adsum-notabs";
      version = "1.1";
      addonId = "{c9f848fb-3fb6-4390-9fc1-e4dd4d1c5122}";
      url = "https://addons.mozilla.org/firefox/downloads/file/883289/no_tabs-1.1-an+fx-linux.xpi?src=";
      sha256 = "48e846a60b217c13ee693ac8bfe23a8bdef2ec073f5f713cce0e08814f280354";
      meta = with stdenv.lib;
      {
        homepage = "https://gitlab.com/adsum/firefox-notabs";
        description = "Disable tabs completely, by always opening a new window instead.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "anchors-reveal" = buildFirefoxXpiAddon {
      pname = "anchors-reveal";
      version = "1.1";
      addonId = "jid1-XX0TcCGBa7GVGw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/1690998/anchors_reveal-1.1-fx.xpi?src=";
      sha256 = "0412acabe742f7e78ff77aa95c4196150c240592a1bbbad75012b39a05352c36";
      meta = with stdenv.lib;
      {
        homepage = "http://dascritch.net/post/2014/06/24/Sniffeur-d-ancre";
        description = "Reveal the anchors in a webpage";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "auto-tab-discard" = buildFirefoxXpiAddon {
      pname = "auto-tab-discard";
      version = "0.3.5.2";
      addonId = "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3464092/auto_tab_discard-0.3.5.2-an+fx.xpi?src=";
      sha256 = "e45a372bb1f48c37d285ffd9794df41fe327e799d1b57ebdb9295e3e94e25311";
      meta = with stdenv.lib;
      {
        homepage = "http://add0n.com/tab-discard.html";
        description = "Increase browser speed and reduce memory load and when you have numerous open tabs.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "bitwarden" = buildFirefoxXpiAddon {
      pname = "bitwarden";
      version = "1.43.4";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3533484/bitwarden_free_password_manager-1.43.4-an+fx.xpi?src=";
      sha256 = "1e1701fcb4f120cefecfcfd8302a75735809f7f7b0d4ef687625c3b3af5cdcd0";
      meta = with stdenv.lib;
      {
        homepage = "https://bitwarden.com";
        description = "A secure and free password manager for all of your devices.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "browserpass" = buildFirefoxXpiAddon {
      pname = "browserpass";
      version = "3.4.1";
      addonId = "browserpass@maximbaz.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3427772/browserpass-3.4.1-fx.xpi?src=";
      sha256 = "42038bdda96609400d09f54417e7899a9650c34d2bf6969e042c68a5c008c05b";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/browserpass/browserpass-extension";
        description = "Browserpass is a browser extension for Firefox and Chrome to retrieve login details from zx2c4's pass (<a href=\"https://outgoing.prod.mozaws.net/v1/fcd8dcb23434c51a78197a1c25d3e2277aa1bc764c827b4b4726ec5a5657eb64/http%3A//passwordstore.org\" rel=\"nofollow\">passwordstore.org</a>) straight from your browser. Tags: passwordstore, password store, password manager, passwordmanager, gpg";
        license = licenses.isc;
        platforms = platforms.all;
        };
      };
    "browserpass-otp" = buildFirefoxXpiAddon {
      pname = "browserpass-otp";
      version = "0.2.3";
      addonId = "browserpass-otp@maximbaz.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3494833/browserpass_otp-0.2.3-fx.xpi?src=";
      sha256 = "02e7e8fe3139b4862c8eaaa46a4c6773d6a2fbd2d6b9995d467d002aba5276d3";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/browserpass/browserpass-otp";
        description = "Companion extension to Browserpass that implements OTP support";
        platforms = platforms.all;
        };
      };
    "buster-captcha-solver" = buildFirefoxXpiAddon {
      pname = "buster-captcha-solver";
      version = "0.7.1";
      addonId = "{e58d3966-3d76-4cd9-8552-1582fbc800c1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3504167/buster_captcha_solver_for_humans-0.7.1-an+fx.xpi?src=";
      sha256 = "05385e12f68b00de346a2c3beab4aa21d0cf2290e7e6e3a539f911deeb16421a";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/dessant/buster";
        description = "Save time by asking Buster to solve captchas for you.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "close-other-windows" = buildFirefoxXpiAddon {
      pname = "close-other-windows";
      version = "0.1";
      addonId = "{fab4ea0f-e0d3-4bb4-9515-aea14d709f69}";
      url = "https://addons.mozilla.org/firefox/downloads/file/589832/close_other_windows-0.1-an+fx-linux.xpi?src=";
      sha256 = "6c189fb4d396f835bf8f0f09c9f1e9ae5dc7cde471b776d8c7d12592a373d3d3";
      meta = with stdenv.lib;
      {
        description = "Adds a button to close all tabs in other windows which are not pinned";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "cookie-autodelete" = buildFirefoxXpiAddon {
      pname = "cookie-autodelete";
      version = "3.2.0";
      addonId = "CookieAutoDelete@kennydo.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3555212/cookie_autodelete-3.2.0-an+fx.xpi?src=";
      sha256 = "c54835d57b0cfa7df538489bb8658447ae94411d24c96bce8ca1789117333115";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/mrdokenny/Cookie-AutoDelete";
        description = "Control your cookies! This WebExtension is inspired by Self Destructing Cookies. When a tab closes, any cookies not being used are automatically deleted. Whitelist the ones you trust while deleting the rest. Support for Container Tabs.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "dark-night-mode" = buildFirefoxXpiAddon {
      pname = "dark-night-mode";
      version = "2.0.2";
      addonId = "{27c3c9d8-95cd-44e6-ae9c-ff537348b9f3}";
      url = "https://addons.mozilla.org/firefox/downloads/file/932525/dark_night_mode-2.0.2-an+fx.xpi?src=";
      sha256 = "8ee966c8bda37c5b2d9cb08d8801eedcfc5ba39959f78bb57d84bc0ab489bfbd";
      meta = with stdenv.lib;
      {
        homepage = "https://darknightmode.com";
        description = "It is a universal night mode for the entire Internet. It uses a special algorithm to automatically change the colors of the websites you visit into dark mode so that you can browse without straining your eyes, especially at night.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "dark-scroll-for-tweetdeck" = buildFirefoxXpiAddon {
      pname = "dark-scroll-for-tweetdeck";
      version = "2.0.0";
      addonId = "{759d3eb8-baf1-49e0-938b-0f963fdac3ae}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1754743/dark_scroll_for_tweetdeck-2.0.0-fx.xpi?src=";
      sha256 = "e0f4e625eda09e9c8300ef650373d5a582a8c77c18eba572aa39d0bd8e3eb596";
      meta = with stdenv.lib;
      {
        description = "Makes the scrollbars on TweetDeck and other sites dark in Firefox. This should be done by the site itself, not by an addon :(\n\nImage based on Scroll by Juan Pablo Bravo, CL <a href=\"https://outgoing.prod.mozaws.net/v1/f9c83bffbd0bf3bfa6ea46deecfa4fa4e9d5a69f49f323c020877e0bf283efac/https%3A//thenounproject.com/term/scroll/18607/\" rel=\"nofollow\">https://thenounproject.com/term/scroll/18607/</a>";
        license = licenses.lgpl3;
        platforms = platforms.all;
        };
      };
    "darkreader" = buildFirefoxXpiAddon {
      pname = "darkreader";
      version = "4.9.6";
      addonId = "addon@darkreader.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3555530/dark_reader-4.9.6-an+fx.xpi?src=";
      sha256 = "0d8724a11ee1349b1661eb4d172a4119dcc531d04852368e50f955629181df27";
      meta = with stdenv.lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "decentraleyes" = buildFirefoxXpiAddon {
      pname = "decentraleyes";
      version = "2.0.14";
      addonId = "jid1-BoFifL9Vbdl2zQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3539177/decentraleyes-2.0.14-an+fx.xpi?src=";
      sha256 = "71a55834ee991605d461f304271f989aa1147e1cf772e25787cbada19ab0ba51";
      meta = with stdenv.lib;
      {
        homepage = "https://decentraleyes.org";
        description = "Protects you against tracking through \"free\", centralized, content delivery. It prevents a lot of requests from reaching networks like Google Hosted Libraries, and serves local files to keep sites from breaking. Complements regular content blockers.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "disconnect" = buildFirefoxXpiAddon {
      pname = "disconnect";
      version = "5.19.3";
      addonId = "2.0@disconnect.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/3363084/disconnect-5.19.3-fx.xpi?src=";
      sha256 = "0c3c632fd997de1459d21e757c6ceeaa90e533d1bb434014b63bbac797894a3d";
      meta = with stdenv.lib;
      {
        homepage = "https://disconnect.me/";
        description = "Make the web faster, more private, and more secure.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "ecosia" = buildFirefoxXpiAddon {
      pname = "ecosia";
      version = "4.0.4";
      addonId = "{d04b0b40-3dab-4f0b-97a6-04ec3eddbfb0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/964413/ecosia_the_search_engine_that_plants_trees-4.0.4-an+fx.xpi?src=";
      sha256 = "b74bdbd58766df623bc044e265d8880da2872c37007a5c6e954560aaf130d90b";
      meta = with stdenv.lib;
      {
        homepage = "http://www.ecosia.org";
        description = "Ecosia is a search engine that uses 80% of its profits from ad revenue to plant trees. By searching with Ecosia you can help the environment for free. This extension adds <a href=\"https://outgoing.prod.mozaws.net/v1/c7a1fe7e1838aaf8fcdb3e88c6700a42c275a31c5fdea179157c9751846df4bf/http%3A//Ecosia.org\" rel=\"nofollow\">Ecosia.org</a> as the default search engine to your Firefox browser. Give it a try!";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "facebook-container" = buildFirefoxXpiAddon {
      pname = "facebook-container";
      version = "2.1.1";
      addonId = "@contain-facebook";
      url = "https://addons.mozilla.org/firefox/downloads/file/3548655/facebook_container-2.1.1-fx.xpi?src=";
      sha256 = "b8cca6d366bf1aa601cd8f0e4e6c51443e067e32c62900293aebea58ff11825d";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/mozilla/contain-facebook";
        description = "Prevent Facebook from tracking you around the web. The Facebook Container extension for Firefox helps you take control and isolate your web activity from Facebook.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "gesturefy" = buildFirefoxXpiAddon {
      pname = "gesturefy";
      version = "2.1.6";
      addonId = "{506e023c-7f2b-40a3-8066-bc5deb40aebe}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3509115/gesturefy-2.1.6-fx.xpi?src=";
      sha256 = "c9c6d471889b614e1d743317bf67c65072f04cdc681f2ad67b526e0749261bb2";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/Robbendebiene/Gesturefy";
        description = "Navigate, operate and browse faster with mouse gestures! A customizable mouse gesture add-on with a variety of different commands.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "ghostery" = buildFirefoxXpiAddon {
      pname = "ghostery";
      version = "8.4.9";
      addonId = "firefox@ghostery.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3546039/ghostery_privacy_ad_blocker-8.4.9-an+fx.xpi?src=";
      sha256 = "5aae04a6e943d7b14dd8827e25a8d017c480b3b593ae2ce2123071f002b3fca1";
      meta = with stdenv.lib;
      {
        homepage = "http://www.ghostery.com/";
        description = "Ghostery is a powerful privacy extension. \n\nBlock ads, stop trackers and speed up websites.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "google-search-link-fix" = buildFirefoxXpiAddon {
      pname = "google-search-link-fix";
      version = "1.6.9";
      addonId = "jid0-XWJxt5VvCXkKzQK99PhZqAn7Xbg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3445488/google_search_link_fix-1.6.9-an+fx.xpi?src=";
      sha256 = "c62024e8f711217585731b00c083af13f921f8245ece72c766528eaba9895732";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/palant/searchlinkfix";
        description = "This extension prevents Google and Yandex search pages from modifying search result links when you click them. This is useful when copying links but it also helps privacy by preventing the search engines from recording your clicks.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "gopass-bridge" = buildFirefoxXpiAddon {
      pname = "gopass-bridge";
      version = "0.7.0";
      addonId = "{eec37db0-22ad-4bf1-9068-5ae08df8c7e9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3534506/gopass_bridge-0.7.0-fx.xpi?src=";
      sha256 = "9831b89377fac7805046b1410c734a5ad671ebea68a62ece36cec6e9b3e30104";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/gopasspw/gopassbridge";
        description = "Gopass Bridge allows searching and inserting login credentials from the gopass password manager ( <a rel=\"nofollow\" href=\"https://outgoing.prod.mozaws.net/v1/fa484fa7cde64c1be04f689a80902fdf34bfe274b8675213f619c3a13e6606ab/https%3A//www.gopass.pw/\">https://www.gopass.pw/</a> ).";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "greasemonkey" = buildFirefoxXpiAddon {
      pname = "greasemonkey";
      version = "4.9";
      addonId = "{e4a8a97b-f2ed-450b-b12d-ee082ba24781}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3024171/greasemonkey-4.9-an+fx.xpi?src=";
      sha256 = "a3c94257caa11c7ef4c9a61b2d898f82212a017aa3ab07e79bce07f98a25d4f1";
      meta = with stdenv.lib;
      {
        homepage = "http://www.greasespot.net/";
        description = "Customize the way a web page displays or behaves, by using small bits of JavaScript.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "header-editor" = buildFirefoxXpiAddon {
      pname = "header-editor";
      version = "4.1.1";
      addonId = "headereditor-amo@addon.firefoxcn.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3472456/header_editor-4.1.1-an+fx.xpi?src=";
      sha256 = "389fba1a1a08b97f8b4bf0ed9c21ac2e966093ec43cecb80fc574997a0a99766";
      meta = with stdenv.lib;
      {
        homepage = "http://team.firefoxcn.net";
        description = "Manage browser's requests, include modify the request headers and response headers, redirect requests, cancel requests";
        license = licenses.gpl2;
        platforms = platforms.all;
        };
      };
    "https-everywhere" = buildFirefoxXpiAddon {
      pname = "https-everywhere";
      version = "2020.3.16";
      addonId = "https-everywhere@eff.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3528100/https_everywhere-2020.3.16-an+fx.xpi?src=";
      sha256 = "6fa87c2f90d938f49cbd8ea949a6ca0999687952af3293cab1b11f5bc0b7b9ff";
      meta = with stdenv.lib;
      {
        homepage = "https://www.eff.org/https-everywhere";
        description = "Encrypt the web! HTTPS Everywhere is a Firefox extension to protect your communications by enabling HTTPS encryption automatically on sites that are known to support it, even when you type URLs or follow links that omit the https: prefix.";
        platforms = platforms.all;
        };
      };
    "ipfs-companion" = buildFirefoxXpiAddon {
      pname = "ipfs-companion";
      version = "2.11.0";
      addonId = "ipfs-firefox-addon@lidel.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3543307/ipfs_companion-2.11.0-an+fx.xpi?src=";
      sha256 = "282c4bda9483443877b1b5d44f336639beab03fc9aef3f2d1b44a6924de29a8f";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/ipfs-shipyard/ipfs-companion";
        description = "Official browser extension that simplifies access to IPFS resources";
        platforms = platforms.all;
        };
      };
    "keepass-helper" = buildFirefoxXpiAddon {
      pname = "keepass-helper";
      version = "1.3";
      addonId = "{e56fa932-ad2c-4cfa-b0d7-a35db1d9b0f6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/839803/keepass_helper_url_in_title-1.3-an+fx.xpi?src=";
      sha256 = "0ff5e82dd4526db8c7b8cddd7778f46d282de9f6fc4c1d11ac7aa7b0bbefe7e4";
      meta = with stdenv.lib;
      {
        description = "Puts a hostname or a URL in the window title.\nIt does not modify the title of a tab, just the window title.\nIt does not inject any JavaScript code to a website, so it can't corrupt, nor can it be corrupted by it.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "keepassxc-browser" = buildFirefoxXpiAddon {
      pname = "keepassxc-browser";
      version = "1.6.2";
      addonId = "keepassxc-browser@keepassxc.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3535304/keepassxc_browser-1.6.2-fx.xpi?src=";
      sha256 = "b67a457407ed063eb0213d7076ca59dee8593ea4b187c6cf76d5403e1edde2e7";
      meta = with stdenv.lib;
      {
        homepage = "https://keepassxc.org/";
        description = "Official browser plugin for the KeePassXC password manager (<a rel=\"nofollow\" href=\"https://outgoing.prod.mozaws.net/v1/aebde84f385b73661158862b419dd43b46ac4c22bea71d8f812030e93d0e52d5/https%3A//keepassxc.org\">https://keepassxc.org</a>).";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "link-cleaner" = buildFirefoxXpiAddon {
      pname = "link-cleaner";
      version = "1.5";
      addonId = "{6d85dea2-0fb4-4de3-9f8c-264bce9a2296}";
      url = "https://addons.mozilla.org/firefox/downloads/file/671858/link_cleaner-1.5-an+fx.xpi?src=";
      sha256 = "1ecec8cbe78b4166fc50da83213219f30575a8c183f7a13aabbff466c71ce560";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/idlewan/link_cleaner";
        description = "Clean URLs that are about to be visited:\n- removes utm_* parameters\n- on item pages of aliexpress and amazon, removes tracking parameters\n- skip redirect pages of facebook, steam and reddit";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "multi-account-containers" = buildFirefoxXpiAddon {
      pname = "multi-account-containers";
      version = "6.2.5";
      addonId = "@testpilot-containers";
      url = "https://addons.mozilla.org/firefox/downloads/file/3548609/firefox_multi_account_containers-6.2.5-fx.xpi?src=";
      sha256 = "4f7b981adc510005ba7fed566ced1f5a31fb383993cb292741fd6a5d6db7f001";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/mozilla/multi-account-containers/#readme";
        description = "Firefox Multi-Account Containers lets you keep parts of your online life separated into color-coded tabs that preserve your privacy. Cookies are separated by container, allowing you to use the web with multiple identities or accounts simultaneously.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "octotree" = buildFirefoxXpiAddon {
      pname = "octotree";
      version = "4.2.1";
      addonId = "jid1-Om7eJGwA1U8Akg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3531977/octotree-4.2.1-fx.xpi?src=";
      sha256 = "d6eaf311c258dc16aa00ca0a0cc2e02ccfa35b4072a70bd259f46d10f1e33bed";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/buunguyen/octotree/";
        description = "GitHub on steroids";
        platforms = platforms.all;
        };
      };
    "old-reddit-redirect" = buildFirefoxXpiAddon {
      pname = "old-reddit-redirect";
      version = "1.1.4";
      addonId = "{9063c2e9-e07c-4c2c-9646-cfe7ca8d0498}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3522186/old_reddit_redirect-1.1.4-an+fx.xpi?src=";
      sha256 = "e4d43fd993eab432f2cebf242b1f63821ad0e4f9a55cc0d08d146499fd609d48";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/tom-james-watson/old-reddit-redirect";
        description = "Ensure Reddit always loads the old design";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "peertubeify" = buildFirefoxXpiAddon {
      pname = "peertubeify";
      version = "0.6.0";
      addonId = "{01175c8e-4506-4263-bad9-d3ddfd4f5a5f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1687641/peertubeify-0.6.0-an+fx.xpi?src=";
      sha256 = "9ccd1eec053a1131629c60983d6fc5ff8ac96205bbcf5a1ed22c7bb46ad07d3b";
      meta = with stdenv.lib;
      {
        homepage = "https://gitlab.com/Ealhad/peertubeify";
        description = "PeerTubeify allows to redirect between YouTube and PeerTube and across PeerTube instances, automatically or by displaying a link.\n\nDon't forget to set your preferences :)\n\nPeerTubeify is not affiliated with PeerTube.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "plasma-integration" = buildFirefoxXpiAddon {
      pname = "plasma-integration";
      version = "1.7.5";
      addonId = "plasma-browser-integration@kde.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3550879/plasma_integration-1.7.5-fx.xpi?src=";
      sha256 = "3119760badb3a849b51dcb4dd14a87ab742b5bba3b93041d84fb126db89f0cb9";
      meta = with stdenv.lib;
      {
        homepage = "http://kde.org";
        description = "Multitask efficiently by controlling browser functions from the Plasma desktop.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "privacy-badger" = buildFirefoxXpiAddon {
      pname = "privacy-badger";
      version = "2020.2.19";
      addonId = "jid1-MnnxcxisBPnSXQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3509922/privacy_badger-2020.2.19-an+fx.xpi?src=";
      sha256 = "4030aebff2e538e3cd637a7d2c5cea4d3f3817cc10e171891abd505ef67b5ac7";
      meta = with stdenv.lib;
      {
        homepage = "https://www.eff.org/privacybadger";
        description = "Automatically learns to block invisible trackers.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "privacy-possum" = buildFirefoxXpiAddon {
      pname = "privacy-possum";
      version = "2019.7.18";
      addonId = "woop-NoopscooPsnSXQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3360398/privacy_possum-2019.7.18-an+fx.xpi?src=";
      sha256 = "0840a8c443e25d8a65da22ce1b557216456b900a699b3541e42e1b47e8cb6c0e";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/cowlicks/privacypossum";
        description = "Privacy Possum monkey wrenches common commercial tracking methods by reducing and falsifying the data gathered by tracking companies.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "react-devtools" = buildFirefoxXpiAddon {
      pname = "react-devtools";
      version = "4.6.0";
      addonId = "@react-devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/3535281/react_developer_tools-4.6.0-fx.xpi?src=";
      sha256 = "7c9e10d61c63628a8a407f33f76b52a8c7f26008b4e024b1dcf32409fed9eb7c";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/facebook/react";
        description = "React Developer Tools is a tool that allows you to inspect a React tree, including the component hierarchy, props, state, and more. To get started, just open the Firefox devtools and switch to the \"⚛️ Components\" or \"⚛️ Profiler\" tab.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "reddit-enhancement-suite" = buildFirefoxXpiAddon {
      pname = "reddit-enhancement-suite";
      version = "5.18.13";
      addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3552446/reddit_enhancement_suite-5.18.13-an+fx.xpi?src=";
      sha256 = "24ebe0d34cd7c4a668b30162953a5ab6b0e7bc97faf5b34b016610ff3306f9f6";
      meta = with stdenv.lib;
      {
        homepage = "https://redditenhancementsuite.com/";
        description = "NOTE: Reddit Enhancement Suite is developed independently, and is not officially endorsed by or affiliated with reddit.\n\nRES is a suite of tools to enhance your reddit browsing experience.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "reddit-moderator-toolbox" = buildFirefoxXpiAddon {
      pname = "reddit-moderator-toolbox";
      version = "5.3.1";
      addonId = "yes@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3533421/moderator_toolbox_for_reddit-5.3.1-an+fx.xpi?src=";
      sha256 = "a78134975fbfdd65b7c3d5a6ea28820ccf1b86235682f3a2f2098556d9cee46a";
      meta = with stdenv.lib;
      {
        homepage = "https://www.reddit.com/r/toolbox";
        description = "This is bundled extension of the /r/toolbox moderator tools for <a rel=\"nofollow\" href=\"https://outgoing.prod.mozaws.net/v1/42268797a19a16a2ebeeda77cca1eda5a48db14e0cff56de4fab35eaef484216/http%3A//reddit.com\">reddit.com</a>\n\nContaining:\n\nMod Tools Enhanced\nMod Button\nMod Mail Pro\nMod Domain Tagger\nToolbox Notifier\nMod User Notes\nToolbox Config";
        license = licenses.asl20;
        platforms = platforms.all;
        };
      };
    "refined-github" = buildFirefoxXpiAddon {
      pname = "refined-github";
      version = "20.4.21";
      addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3554168/refined_github-20.4.21-an+fx.xpi?src=";
      sha256 = "b64f37d571e0720fd8bcd3f55bd50d4acafcd3f7b6490ae187c39fbfea82a868";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/sindresorhus/refined-github";
        description = "Simplifies the GitHub interface and adds many useful features.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "save-page-we" = buildFirefoxXpiAddon {
      pname = "save-page-we";
      version = "17.2";
      addonId = "savepage-we@DW-dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/3537172/save_page_we-17.2-fx.xpi?src=";
      sha256 = "7c727921144f8e998b04cad516a9f2ed638e5ba655662f98578cf7b7ed61c126";
      meta = with stdenv.lib;
      {
        description = "Save a complete web page (as curently displayed) as a single HTML file that can be opened in any browser. Choose which items to save. Define the format of the saved filename. Enter user comments.";
        license = licenses.gpl2;
        platforms = platforms.all;
        };
      };
    "stylus" = buildFirefoxXpiAddon {
      pname = "stylus";
      version = "1.5.11";
      addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3553643/stylus-1.5.11-fx.xpi?src=";
      sha256 = "f665c05183486d91f0d76d7685350483b9404d175b20627f256d4073a682c106";
      meta = with stdenv.lib;
      {
        homepage = "https://add0n.com/stylus.html";
        description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "swedish-dictionary" = buildFirefoxXpiAddon {
      pname = "swedish-dictionary";
      version = "1.21";
      addonId = "swedish@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3539390/swedish_dictionary-1.21.xpi?src=";
      sha256 = "7d2ce7f7bfb65cfb5dd4138686acd977cf589c6ce91fc342ae5e2e26a09d1dbe";
      meta = with stdenv.lib;
      {
        description = "Swedish spell-check dictionary.";
        license = licenses.lgpl3;
        platforms = platforms.all;
        };
      };
    "tab-center-redux" = buildFirefoxXpiAddon {
      pname = "tab-center-redux";
      version = "0.7.1";
      addonId = "{0ad88674-2b41-4cfb-99e3-e206c74a0076}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1015844/tab_center_redux-0.7.1-an+fx-linux.xpi?src=";
      sha256 = "b710917f86da1968fcba3f159750006550305d36222e1fa0f069b3868378163c";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/eoger/tabcenter-redux";
        description = "Move your tabs to the side of your browser window.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "temporary-containers" = buildFirefoxXpiAddon {
      pname = "temporary-containers";
      version = "1.8";
      addonId = "{c607c8df-14a7-4f28-894f-29e8722976af}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3511233/temporary_containers-1.8-fx.xpi?src=";
      sha256 = "abd3cc36826e571a3779c112ebd3e18886e6d0708aad4936a3c82b6f5eab7a2b";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/stoically/temporary-containers";
        description = "Open tabs, websites, and links in automatically managed disposable containers. Containers isolate data websites store (cookies, storage, and more) from each other, enhancing your privacy and security while you browse.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "text-contrast-for-dark-themes" = buildFirefoxXpiAddon {
      pname = "text-contrast-for-dark-themes";
      version = "2.1.6";
      addonId = "jid1-nMVE2oP40qeQDQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3462082/text_contrast_for_dark_themes-2.1.6-fx.xpi?src=";
      sha256 = "e768c13a4fa10e4dc2ce54f0539dd5a115c76babe6c044ae1115966f6062244d";
      meta = with stdenv.lib;
      {
        description = "Fixes low-contrast text when using a dark desktop theme.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "textern" = buildFirefoxXpiAddon {
      pname = "textern";
      version = "0.6";
      addonId = "textern@jlebon.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3542716/textern-0.6-fx.xpi?src=";
      sha256 = "d52066af80a2f7ed589af168909fafa694c6c4a22c105a1a2dcbb83e03d684f9";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/jlebon/textern";
        description = "Edit text in your favourite external editor!";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "torswitch" = buildFirefoxXpiAddon {
      pname = "torswitch";
      version = "1.0";
      addonId = "{34fab4dc-77cc-4631-be8b-7a85a1e9fc09}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1020346/torswitch-1.0-an+fx.xpi?src=";
      sha256 = "3c50bd5c8890628a7260a742099293b6e752e7826e0643e3f515105ec3d9b85e";
      meta = with stdenv.lib;
      {
        homepage = "https://gitlab.com/faridb/TorSwitch";
        description = "Browse through Tor's SOCKS5 proxy.\n\nThis extension allows you to set Firefox proxy settings to use Tor's SOCKS5 proxy and quickly enable/disable Tor's proxy with just a click.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "transparent-standalone-image" = buildFirefoxXpiAddon {
      pname = "transparent-standalone-image";
      version = "2.1";
      addonId = "jid0-ezUl0hF1SPM9hLO5BMBkNoblB8s@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/738931/transparent_standalone_images-2.1-an+fx.xpi?src=";
      sha256 = "f56bc840d5ac96d1697feed57e7ab0928ff2c47232e236d00560efc2f3bf57b5";
      meta = with stdenv.lib;
      {
        description = "This add-on renders standalone images on a transparent background, so you can see the image in all its glory!";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "ublock-origin" = buildFirefoxXpiAddon {
      pname = "ublock-origin";
      version = "1.26.2";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3551054/ublock_origin-1.26.2-an+fx.xpi?src=";
      sha256 = "13f2d13dcee8bd8af3edaa29d074c474da8e05465af17b34ef5f70bdba9d147c";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "umatrix" = buildFirefoxXpiAddon {
      pname = "umatrix";
      version = "1.4.0";
      addonId = "uMatrix@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3396815/umatrix-1.4.0-an+fx.xpi?src=";
      sha256 = "991f0fa5c64172b8a2bc0a010af60743eba1c18078c490348e1c6631882cbfc7";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/gorhill/uMatrix";
        description = "Point &amp; click to forbid/allow any class of requests made by your browser. Use it to block scripts, iframes, ads, facebook, etc.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "vim-vixen" = buildFirefoxXpiAddon {
      pname = "vim-vixen";
      version = "0.27";
      addonId = "vim-vixen@i-beam.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3511966/vim_vixen-0.27-an+fx.xpi?src=";
      sha256 = "95509c736526005d86202987ffeb7f8721499af2bd3337986eb7248fcbe4ce3b";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/ueokande/vim-vixen";
        description = "Accelerates your web browsing with Vim power!!";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "vimium" = buildFirefoxXpiAddon {
      pname = "vimium";
      version = "1.66";
      addonId = "{d7742d87-e61d-4b78-b8a1-b469842139fa}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3518684/vimium_ff-1.66-fx.xpi?src=";
      sha256 = "ff034c5e35eef842da531080e2d345360ccce09f6eb7dfa53fd2c2b7d662b758";
      meta = with stdenv.lib;
      {
        homepage = "https://github.com/philc/vimium";
        description = "The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.\n\nThis is a port of the popular Chrome extension to Firefox.\n\nMost stuff works, but the port to Firefox remains a work in progress.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "violentmonkey" = buildFirefoxXpiAddon {
      pname = "violentmonkey";
      version = "2.12.7";
      addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3505281/violentmonkey-2.12.7-an+fx.xpi?src=";
      sha256 = "351235d7bc488b79e495d99d667dbc07587c231b28ec529f14ffcfee010125fb";
      meta = with stdenv.lib;
      {
        homepage = "https://violentmonkey.github.io/";
        description = "Violentmonkey provides userscripts support for browsers.\nIt's open source! <a rel=\"nofollow\" href=\"https://outgoing.prod.mozaws.net/v1/c8bcebd9a0e76f20c888274e94578ab5957439e46d59a046ff9e1a9ef55c282c/https%3A//github.com/violentmonkey/violentmonkey\">https://github.com/violentmonkey/violentmonkey</a>";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "zoom-page-we" = buildFirefoxXpiAddon {
      pname = "zoom-page-we";
      version = "17.2";
      addonId = "zoompage-we@DW-dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/3527152/zoom_page_we-17.2-fx.xpi?src=";
      sha256 = "47e52e565b16c20e7d878e470a73a5033232fa269b67d235120a39fdf669d5ca";
      meta = with stdenv.lib;
      {
        description = "Zoom web pages (either per-site or per-tab) using full-page zoom, text-only zoom and minimum font size. Fit-to-width zooming can be applied to pages automatically. Fit-to-window scaling  can be applied to small images.";
        license = licenses.gpl2;
        platforms = platforms.all;
        };
      };
    }