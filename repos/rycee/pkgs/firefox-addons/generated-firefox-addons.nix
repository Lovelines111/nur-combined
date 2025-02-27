{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "10ten-ja-reader" = buildFirefoxXpiAddon {
      pname = "10ten-ja-reader";
      version = "1.20.0";
      addonId = "{59812185-ea92-4cca-8ab7-cfcacee81281}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4325631/10ten_ja_reader-1.20.0.xpi";
      sha256 = "25215fe0211f2e01b5f7b75a3311214eb647999e48e4a77268e36e5ccc4efbd2";
      meta = with lib;
      {
        homepage = "https://github.com/birchill/10ten-ja-reader/";
        description = "Quickly translate Japanese by hovering over words. Formerly released as Rikaichamp.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "clipboardWrite"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "http://*/*"
          "https://*/*"
          "file:///*"
          "https://docs.google.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "2fas-two-factor-authentication" = buildFirefoxXpiAddon {
      pname = "2fas-two-factor-authentication";
      version = "1.7.2";
      addonId = "admin@2fas.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4320234/2fas_two_factor_authentication-1.7.2.xpi";
      sha256 = "03e93ea0614631cbcb73a225036820f0ba1138974f5df2d5189957f8137602b8";
      meta = with lib;
      {
        homepage = "https://2fas.com/";
        description = "2FAS extension is simple, private, and secured: one click, one tap, and your 2FA token is automatically entered!";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "tabs"
          "storage"
          "notifications"
          "contextMenus"
          "webNavigation"
          "https://*.2fas.com/*"
          "wss://*.2fas.com/*"
          "https://*/*"
          "http://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "a11ycss" = buildFirefoxXpiAddon {
      pname = "a11ycss";
      version = "2.0.1";
      addonId = "a11y.css@ffoodd";
      url = "https://addons.mozilla.org/firefox/downloads/file/4156875/a11ycss-2.0.1.xpi";
      sha256 = "49d52c589266604c232c29a915b3d06df231267b2dca7d7694284a25059b5c51";
      meta = with lib;
      {
        homepage = "https://ffoodd.github.io/a11y.css/";
        description = "a11y.css provides warnings about possible risks and mistakes that exist in HTML code through a style sheet. This extension also provides several accessibility-related utilities.\n\nsee <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4c643171ccddfcfa3712d45a2b7b615f54195eb4507868ab6ef3fbf6694dc4c2/https%3A//github.com/ffoodd/a11y.css/tree/webextension\" rel=\"nofollow\">https://github.com/ffoodd/a11y.css/tree/webextension</a> for  details";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "scripting" "tabs" "*://*/*" ];
        platforms = platforms.all;
      };
    };
    "adaptive-tab-bar-colour" = buildFirefoxXpiAddon {
      pname = "adaptive-tab-bar-colour";
      version = "2.1.4";
      addonId = "ATBC@EasonWong";
      url = "https://addons.mozilla.org/firefox/downloads/file/4159211/adaptive_tab_bar_colour-2.1.4.xpi";
      sha256 = "401e064048826dd627f02043ee04081b7caed191161f3de7cc89c22b4a222ff8";
      meta = with lib;
      {
        homepage = "https://github.com/easonwong-de/Adaptive-Tab-Bar-Colour";
        description = "Changes the color of Firefox tab bar to match the website theme.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "tabs"
          "theme"
          "storage"
          "browserSettings"
          "management"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "adblocker-ultimate" = buildFirefoxXpiAddon {
      pname = "adblocker-ultimate";
      version = "3.8.26";
      addonId = "adblockultimate@adblockultimate.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4320550/adblocker_ultimate-3.8.26.xpi";
      sha256 = "b2a679083d79bb137fc72b7c8b2d1a245b9e767af8d43301a8eb64c2bd893cb5";
      meta = with lib;
      {
        homepage = "https://adblockultimate.net";
        description = "Completely remove ALL ads. No “acceptable” ads or whitelisted advertisers allowed. This free extensions also helps block trackers and malware.";
        license = licenses.lgpl3;
        mozPermissions = [
          "tabs"
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "storage"
          "unlimitedStorage"
          "contextMenus"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "add-custom-search-engine" = buildFirefoxXpiAddon {
      pname = "add-custom-search-engine";
      version = "4.2";
      addonId = "{af37054b-3ace-46a2-ac59-709e4412bec6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3812756/add_custom_search_engine-4.2.xpi";
      sha256 = "86aaf173514ec2da55556eb339a9d7c115c6e070c5433ebff8db31baa8e165d5";
      meta = with lib;
      {
        description = "Add a custom search engine to the list of available search engines in the search bar and URL bar.";
        license = licenses.mpl20;
        mozPermissions = [ "https://paste.mozilla.org/api/" "search" ];
        platforms = platforms.all;
      };
    };
    "addy_io" = buildFirefoxXpiAddon {
      pname = "addy_io";
      version = "2.3.2";
      addonId = "browser-extension@anonaddy";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340302/addy_io-2.3.2.xpi";
      sha256 = "574b5ce3c435367812086bf386a323864d24b85215a045476021bb84d39f2c30";
      meta = with lib;
      {
        homepage = "https://addy.io";
        description = "Open-source Anonymous Email Forwarding. \n\nQuickly and easily view, search, manage and create new aliases in just a few clicks using the <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/25034f1cb8a69fd234852ad09c1c4bebfe6f518442f19fc7c4e4b25c62f0014e/http%3A//addy.io\" rel=\"nofollow\">addy.io</a> browser extension.";
        license = licenses.mit;
        mozPermissions = [ "storage" "activeTab" ];
        platforms = platforms.all;
      };
    };
    "adnauseam" = buildFirefoxXpiAddon {
      pname = "adnauseam";
      version = "3.22.0";
      addonId = "adnauseam@rednoise.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328793/adnauseam-3.22.0.xpi";
      sha256 = "1648ecfc60892c356f9142e0c6fcb68928f6154e0887125726dd4b049c778ca0";
      meta = with lib;
      {
        homepage = "https://adnauseam.io";
        description = "Blocking ads and fighting back against advertising surveillance.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "dns"
          "menus"
          "privacy"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "management"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "https://easylist.to/*"
          "https://*.fanboy.co.nz/*"
          "https://filterlists.com/*"
          "https://forums.lanik.us/*"
          "https://github.com/*"
          "https://*.github.io/*"
          "https://github.com/uBlockOrigin/*"
          "https://ublockorigin.github.io/*"
          "https://*.reddit.com/r/uBlockOrigin/*"
        ];
        platforms = platforms.all;
      };
    };
    "adsum-notabs" = buildFirefoxXpiAddon {
      pname = "adsum-notabs";
      version = "1.2resigned1";
      addonId = "{c9f848fb-3fb6-4390-9fc1-e4dd4d1c5122}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4274750/adsum_notabs-1.2resigned1.xpi";
      sha256 = "853674a75add207d3c9635de0a43a478eed8805c0e6b673c1f5f4a26f765eb0e";
      meta = with lib;
      {
        homepage = "https://gitlab.com/adsum/firefox-notabs";
        description = "Disable tabs completely, by always opening a new window instead.";
        license = licenses.gpl3;
        mozPermissions = [ "tabs" ];
        platforms = platforms.all;
      };
    };
    "alby" = buildFirefoxXpiAddon {
      pname = "alby";
      version = "3.9.0";
      addonId = "extension@getalby.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4322107/alby-3.9.0.xpi";
      sha256 = "f1cff1298510150187fc6111d88325f88d9f53b684d6b3edec67db4ce828fa36";
      meta = with lib;
      {
        homepage = "https://getAlby.com/";
        description = "Your Bitcoin Lightning wallet and companion for accessing Bitcoin and Nostr apps, payments across the globe and passwordless logins.";
        license = licenses.mit;
        mozPermissions = [
          "nativeMessaging"
          "notifications"
          "storage"
          "tabs"
          "unlimitedStorage"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "alfred-launcher-integration" = buildFirefoxXpiAddon {
      pname = "alfred-launcher-integration";
      version = "1.2.0";
      addonId = "alfredfirefox@deanishe.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3713996/alfred_launcher_integration-1.2.0.xpi";
      sha256 = "73e620f6c01dd61c7f1a9b17aae54cdcfded46214dc0b685296f9594a221f639";
      meta = with lib;
      {
        homepage = "https://github.com/deanishe/alfred-firefox";
        description = "Integrate Firefox with Alfred — Search your Firefox bookmarks &amp; history and control Firefox tabs from Alfred.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "bookmarks"
          "downloads"
          "history"
          "tabs"
          "nativeMessaging"
        ];
        platforms = platforms.all;
      };
    };
    "amp2html" = buildFirefoxXpiAddon {
      pname = "amp2html";
      version = "2.1.0";
      addonId = "{569456be-2850-4f7e-b669-71e55140ee0a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3546077/amp2html-2.1.0.xpi";
      sha256 = "762e4032782c30d3d4805371c7730ac36255ab57f5ce5279b4849f0d4ca65790";
      meta = with lib;
      {
        homepage = "https://www.daniel.priv.no/web-extensions/amp2html.html";
        description = "Automatically redirects AMP pages to the regular web page variant.";
        license = licenses.mit;
        mozPermissions = [
          "*://t.co/*"
          "https://bing-amp.com/c/*"
          "https://*.bing-amp.com/c/*"
          "https://cdn.ampproject.org/c/*"
          "https://*.cdn.ampproject.org/c/*"
          "https://www.bing.com/amp/*"
          "https://www.google.com/amp/*"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "anchors-reveal" = buildFirefoxXpiAddon {
      pname = "anchors-reveal";
      version = "1.2resigned1";
      addonId = "jid1-XX0TcCGBa7GVGw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270578/anchors_reveal-1.2resigned1.xpi";
      sha256 = "bcae97368b2c2271cf694676a2fb29dd168698e6e8105a6df6607fcf0bbce77a";
      meta = with lib;
      {
        homepage = "http://dascritch.net/post/2014/06/24/Sniffeur-d-ancre";
        description = "Reveal the anchors in a webpage";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "angular-devtools" = buildFirefoxXpiAddon {
      pname = "angular-devtools";
      version = "1.0.17";
      addonId = "{20a9bb38-ed7c-4faf-9aaf-7c5d241fd747}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4329374/angular_devtools-1.0.17.xpi";
      sha256 = "f8818e0a4635a7051ad3928a3f8f6bab3bf5e51f46705d31bca9bec617820cf6";
      meta = with lib;
      {
        homepage = "https://angular.dev/tools/devtools/";
        description = "Angular DevTools extends Firefox DevTools adding Angular specific debugging and profiling capabilities.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "http://*/*"
          "https://*/*"
          "file:///*"
          "devtools"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "animalese-typing" = buildFirefoxXpiAddon {
      pname = "animalese-typing";
      version = "1.37";
      addonId = "dagexviii.dev@gmail.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4113183/animalese_typing-1.37.xpi";
      sha256 = "4865e53024521b3870ec39ab955186e8bd30e51950d2e7c35bca0d1882495c80";
      meta = with lib;
      {
        description = "Plays animal crossing villager sounds whenever you type! The official port of my Animalese Typing extension from the chrome store.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "annotations-restored" = buildFirefoxXpiAddon {
      pname = "annotations-restored";
      version = "1.2";
      addonId = "{0731d555-4732-4047-99f9-38a388ffa044}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4002251/annotations_restored-1.2.xpi";
      sha256 = "114666c34865b32f31162e47959da3b46735f31c9166ce71fd60a97f04822c64";
      meta = with lib;
      {
        homepage = "https://github.com/isaackd/AnnotationsRestored";
        description = "Brings annotation support back to YouTube™!";
        license = licenses.gpl3;
        mozPermissions = [
          "https://storage.googleapis.com/biggest_bucket/annotations/*"
          "storage"
          "*://www.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "aria2-integration" = buildFirefoxXpiAddon {
      pname = "aria2-integration";
      version = "0.4.5";
      addonId = "{e2488817-3d73-4013-850d-b66c5e42d505}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3025850/aria2_integration-0.4.5.xpi";
      sha256 = "1672866f9860499d1a1d5848baab506431ac7db2e99253d517c3735f84410f26";
      meta = with lib;
      {
        description = "Replace built-in download manager. When activated, detects the download links to direct links to this add-on and send to Aria2";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "tabs"
          "notifications"
          "downloads"
          "downloads.open"
          "contextMenus"
          "webRequest"
          "webRequestBlocking"
          "cookies"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "augmented-steam" = buildFirefoxXpiAddon {
      pname = "augmented-steam";
      version = "3.1.1";
      addonId = "{1be309c5-3e4f-4b99-927d-bb500eb4fa88}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4264122/augmented_steam-3.1.1.xpi";
      sha256 = "6fab320caaf70a6d4d15f8b266216780beb7da246871b9be1a480e68a0eb9f2f";
      meta = with lib;
      {
        homepage = "https://augmentedsteam.com/";
        description = "Augments your Steam Experience";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "*://*.steampowered.com/*"
          "*://steamcommunity.com/*"
          "*://*.isthereanydeal.com/"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "*://steamcommunity.com/app/*"
          "*://steamcommunity.com/sharedfiles/editguide/?*"
          "*://steamcommunity.com/sharedfiles/editguide?*"
          "*://steamcommunity.com/workshop/editguide/?*"
          "*://steamcommunity.com/workshop/editguide?*"
          "*://steamcommunity.com/id/*/badges"
          "*://steamcommunity.com/id/*/badges/"
          "*://steamcommunity.com/id/*/badges/?*"
          "*://steamcommunity.com/id/*/badges?*"
          "*://steamcommunity.com/profiles/*/badges"
          "*://steamcommunity.com/profiles/*/badges/"
          "*://steamcommunity.com/profiles/*/badges/?*"
          "*://steamcommunity.com/profiles/*/badges?*"
          "*://steamcommunity.com/tradingcards/boostercreator"
          "*://steamcommunity.com/tradingcards/boostercreator/"
          "*://steamcommunity.com/tradingcards/boostercreator/?*"
          "*://steamcommunity.com/tradingcards/boostercreator?*"
          "*://steamcommunity.com/stats/*/achievements"
          "*://steamcommunity.com/stats/*/achievements/"
          "*://steamcommunity.com/stats/*/achievements/?*"
          "*://steamcommunity.com/stats/*/achievements?*"
          "*://steamcommunity.com/id/*/friendsthatplay/*"
          "*://steamcommunity.com/profiles/*/friendsthatplay/*"
          "*://steamcommunity.com/id/*/gamecards/*"
          "*://steamcommunity.com/profiles/*/gamecards/*"
          "*://steamcommunity.com/id/*/friends"
          "*://steamcommunity.com/id/*/friends/*"
          "*://steamcommunity.com/id/*/friends?*"
          "*://steamcommunity.com/profiles/*/friends"
          "*://steamcommunity.com/profiles/*/friends/*"
          "*://steamcommunity.com/profiles/*/friends?*"
          "*://steamcommunity.com/id/*/groups"
          "*://steamcommunity.com/id/*/groups/*"
          "*://steamcommunity.com/id/*/groups?*"
          "*://steamcommunity.com/profiles/*/groups"
          "*://steamcommunity.com/profiles/*/groups/*"
          "*://steamcommunity.com/profiles/*/groups?*"
          "*://steamcommunity.com/id/*/following"
          "*://steamcommunity.com/id/*/following/*"
          "*://steamcommunity.com/id/*/following?*"
          "*://steamcommunity.com/profiles/*/following"
          "*://steamcommunity.com/profiles/*/following/*"
          "*://steamcommunity.com/profiles/*/following?*"
          "*://steamcommunity.com/id/*/games"
          "*://steamcommunity.com/id/*/games/"
          "*://steamcommunity.com/id/*/games/?*"
          "*://steamcommunity.com/id/*/games?*"
          "*://steamcommunity.com/profiles/*/games"
          "*://steamcommunity.com/profiles/*/games/"
          "*://steamcommunity.com/profiles/*/games/?*"
          "*://steamcommunity.com/profiles/*/games?*"
          "*://steamcommunity.com/id/*/followedgames"
          "*://steamcommunity.com/id/*/followedgames/"
          "*://steamcommunity.com/id/*/followedgames/?*"
          "*://steamcommunity.com/id/*/followedgames?*"
          "*://steamcommunity.com/profiles/*/followedgames"
          "*://steamcommunity.com/profiles/*/followedgames/"
          "*://steamcommunity.com/profiles/*/followedgames/?*"
          "*://steamcommunity.com/profiles/*/followedgames?*"
          "*://steamcommunity.com/groups/*"
          "*://steamcommunity.com/app/*/guides"
          "*://steamcommunity.com/app/*/guides/"
          "*://steamcommunity.com/app/*/guides/?*"
          "*://steamcommunity.com/app/*/guides?*"
          "*://steamcommunity.com/market"
          "*://steamcommunity.com/market/"
          "*://steamcommunity.com/market/?*"
          "*://steamcommunity.com/market?*"
          "*://steamcommunity.com/id/*/inventory"
          "*://steamcommunity.com/id/*/inventory/"
          "*://steamcommunity.com/id/*/inventory/?*"
          "*://steamcommunity.com/id/*/inventory?*"
          "*://steamcommunity.com/profiles/*/inventory"
          "*://steamcommunity.com/profiles/*/inventory/"
          "*://steamcommunity.com/profiles/*/inventory/?*"
          "*://steamcommunity.com/profiles/*/inventory?*"
          "*://steamcommunity.com/id/*/home"
          "*://steamcommunity.com/id/*/home/"
          "*://steamcommunity.com/id/*/home/?*"
          "*://steamcommunity.com/id/*/home?*"
          "*://steamcommunity.com/profiles/*/home"
          "*://steamcommunity.com/profiles/*/home/"
          "*://steamcommunity.com/profiles/*/home/?*"
          "*://steamcommunity.com/profiles/*/home?*"
          "*://steamcommunity.com/id/*/myactivity"
          "*://steamcommunity.com/id/*/myactivity/"
          "*://steamcommunity.com/id/*/myactivity/?*"
          "*://steamcommunity.com/id/*/myactivity?*"
          "*://steamcommunity.com/profiles/*/myactivity"
          "*://steamcommunity.com/profiles/*/myactivity/"
          "*://steamcommunity.com/profiles/*/myactivity/?*"
          "*://steamcommunity.com/profiles/*/myactivity?*"
          "*://steamcommunity.com/id/*/friendactivitydetail/*"
          "*://steamcommunity.com/profiles/*/friendactivitydetail/*"
          "*://steamcommunity.com/id/*/status/*"
          "*://steamcommunity.com/profiles/*/status/*"
          "*://steamcommunity.com/id/*/edit/*"
          "*://steamcommunity.com/profiles/*/edit/*"
          "*://steamcommunity.com/id/*"
          "*://steamcommunity.com/profiles/*"
          "*://steamcommunity.com/market/listings/*"
          "*://steamcommunity.com/market/search"
          "*://steamcommunity.com/market/search/*"
          "*://steamcommunity.com/market/search?*"
          "*://steamcommunity.com/id/*/stats/*"
          "*://steamcommunity.com/profiles/*/stats/*"
          "*://steamcommunity.com/id/*/recommended"
          "*://steamcommunity.com/id/*/recommended/"
          "*://steamcommunity.com/id/*/recommended/?*"
          "*://steamcommunity.com/id/*/recommended?*"
          "*://steamcommunity.com/profiles/*/recommended"
          "*://steamcommunity.com/profiles/*/recommended/"
          "*://steamcommunity.com/profiles/*/recommended/?*"
          "*://steamcommunity.com/profiles/*/recommended?*"
          "*://steamcommunity.com/id/*/reviews"
          "*://steamcommunity.com/id/*/reviews/"
          "*://steamcommunity.com/id/*/reviews/?*"
          "*://steamcommunity.com/id/*/reviews?*"
          "*://steamcommunity.com/profiles/*/reviews"
          "*://steamcommunity.com/profiles/*/reviews/"
          "*://steamcommunity.com/profiles/*/reviews/?*"
          "*://steamcommunity.com/profiles/*/reviews?*"
          "*://*.steampowered.com/points"
          "*://*.steampowered.com/points/*"
          "*://*.steampowered.com/points?*"
          "*://steamcommunity.com/id/*/myworkshopfiles/?*browsefilter=mysubscriptions*"
          "*://steamcommunity.com/id/*/myworkshopfiles?*browsefilter=mysubscriptions*"
          "*://steamcommunity.com/profiles/*/myworkshopfiles/?*browsefilter=mysubscriptions*"
          "*://steamcommunity.com/profiles/*/myworkshopfiles?*browsefilter=mysubscriptions*"
          "*://steamcommunity.com/sharedfiles/filedetails"
          "*://steamcommunity.com/sharedfiles/filedetails/*"
          "*://steamcommunity.com/sharedfiles/filedetails?*"
          "*://steamcommunity.com/workshop/filedetails"
          "*://steamcommunity.com/workshop/filedetails/*"
          "*://steamcommunity.com/workshop/filedetails?*"
          "*://*.steampowered.com/charts"
          "*://*.steampowered.com/charts/*"
          "*://*.steampowered.com/charts?*"
          "*://*.steampowered.com/account"
          "*://*.steampowered.com/account/"
          "*://*.steampowered.com/account/?*"
          "*://*.steampowered.com/account?*"
          "*://*.steampowered.com/agecheck/*"
          "*://store.steampowered.com/"
          "*://store.steampowered.com/?*"
          "*://*.steampowered.com/app/*"
          "*://steamcommunity.com/tradeoffer/*"
          "*://*.steampowered.com/steamaccount/addfunds"
          "*://*.steampowered.com/steamaccount/addfunds/"
          "*://*.steampowered.com/steamaccount/addfunds/?*"
          "*://*.steampowered.com/steamaccount/addfunds?*"
          "*://*.steampowered.com/digitalgiftcards/selectgiftcard"
          "*://*.steampowered.com/digitalgiftcards/selectgiftcard/"
          "*://*.steampowered.com/digitalgiftcards/selectgiftcard/?*"
          "*://*.steampowered.com/digitalgiftcards/selectgiftcard?*"
          "*://steamcommunity.com/sharedfiles"
          "*://steamcommunity.com/sharedfiles/"
          "*://steamcommunity.com/sharedfiles/?*"
          "*://steamcommunity.com/sharedfiles?*"
          "*://steamcommunity.com/workshop"
          "*://steamcommunity.com/workshop/"
          "*://steamcommunity.com/workshop/?*"
          "*://steamcommunity.com/workshop?*"
          "*://*.steampowered.com/bundle/*"
          "*://store.steampowered.com/account/licenses"
          "*://store.steampowered.com/account/licenses/"
          "*://store.steampowered.com/account/licenses/?*"
          "*://store.steampowered.com/account/licenses?*"
          "*://*.steampowered.com/cart"
          "*://*.steampowered.com/cart/*"
          "*://*.steampowered.com/cart?*"
          "*://*.steampowered.com/account/registerkey"
          "*://*.steampowered.com/account/registerkey/"
          "*://*.steampowered.com/account/registerkey/?*"
          "*://*.steampowered.com/account/registerkey?*"
          "*://*.steampowered.com/search"
          "*://*.steampowered.com/search/*"
          "*://*.steampowered.com/search?*"
          "*://*.steampowered.com/wishlist/id/*"
          "*://*.steampowered.com/wishlist/profiles/*"
          "*://*.steampowered.com/sub/*"
          "*://steamcommunity.com/sharedfiles/browse"
          "*://steamcommunity.com/sharedfiles/browse/"
          "*://steamcommunity.com/sharedfiles/browse/?*"
          "*://steamcommunity.com/sharedfiles/browse?*"
          "*://steamcommunity.com/workshop/browse"
          "*://steamcommunity.com/workshop/browse/"
          "*://steamcommunity.com/workshop/browse/?*"
          "*://steamcommunity.com/workshop/browse?*"
        ];
        platforms = platforms.all;
      };
    };
    "auto-sort-bookmarks" = buildFirefoxXpiAddon {
      pname = "auto-sort-bookmarks";
      version = "3.4.5";
      addonId = "sortbookmarks@bouanto";
      url = "https://addons.mozilla.org/firefox/downloads/file/3948412/auto_sort_bookmarks-3.4.5.xpi";
      sha256 = "8cbeb04f2c46dcd28a6762c7a4ebd617124a8b1854a94fec15af37fd247b86fd";
      meta = with lib;
      {
        homepage = "https://github.com/eric-bixby/auto-sort-bookmarks-webext";
        description = "Sort bookmarks by multiple criteria";
        license = licenses.gpl3;
        mozPermissions = [ "bookmarks" "downloads" "history" "storage" "tabs" ];
        platforms = platforms.all;
      };
    };
    "auto-tab-discard" = buildFirefoxXpiAddon {
      pname = "auto-tab-discard";
      version = "0.6.7";
      addonId = "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4045009/auto_tab_discard-0.6.7.xpi";
      sha256 = "89e59b8603c444258c89a507d7126be52ad7a35e4f7b8cfbca039b746f70b5d5";
      meta = with lib;
      {
        homepage = "https://webextension.org/listing/tab-discard.html";
        description = "Increase browser speed and reduce memory load and when you have numerous open tabs.";
        license = licenses.mpl20;
        mozPermissions = [
          "idle"
          "storage"
          "contextMenus"
          "notifications"
          "alarms"
          "*://*/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "automatic-dark" = buildFirefoxXpiAddon {
      pname = "automatic-dark";
      version = "1.4.1";
      addonId = "{9ed7d361-ccd9-4cad-9846-977da2651fb5}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4074771/automatic_dark-1.4.1.xpi";
      sha256 = "77efc42567960695ab4fade263e201cca0b85c1af8dd1dd69906b0950fa46a8c";
      meta = with lib;
      {
        homepage = "https://github.com/skhzhang/time-based-themes/";
        description = "Automatically change Firefox's theme based on the time.";
        license = licenses.mit;
        mozPermissions = [
          "alarms"
          "browserSettings"
          "management"
          "storage"
          "theme"
        ];
        platforms = platforms.all;
      };
    };
    "aw-watcher-web" = buildFirefoxXpiAddon {
      pname = "aw-watcher-web";
      version = "0.4.8";
      addonId = "{ef87d84c-2127-493f-b952-5b4e744245bc}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4114360/aw_watcher_web-0.4.8.xpi";
      sha256 = "6be85d9755013520a5a4835cb8ae2a3287e4cb9c12b5baf4957ab10368dd45d2";
      meta = with lib;
      {
        homepage = "https://github.com/ActivityWatch/aw-watcher-web";
        description = "This extension logs the current tab and your browser activity to ActivityWatch.";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "alarms"
          "notifications"
          "activeTab"
          "storage"
          "http://localhost:5600/api/*"
          "http://localhost:5666/api/*"
        ];
        platforms = platforms.all;
      };
    };
    "awesome-rss" = buildFirefoxXpiAddon {
      pname = "awesome-rss";
      version = "1.3.6resigned1";
      addonId = "{97d566da-42c5-4ef4-a03b-5a2e5f7cbcb2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272927/awesome_rss-1.3.6resigned1.xpi";
      sha256 = "383981387b37cba3ba1931235dfa58cb8b76ec7dff6195d1adbfde221a26c36b";
      meta = with lib;
      {
        description = "Puts an RSS/Atom subscribe button back in URL bar.\n\nSupports \"Live Bookmarks\" (built-in), Feedly, &amp; Inoreader";
        license = licenses.gpl3;
        mozPermissions = [ "tabs" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "batchcamp" = buildFirefoxXpiAddon {
      pname = "batchcamp";
      version = "1.4.7";
      addonId = "{d44fa1f9-1400-401d-a79e-650d466ec6d6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4335028/batchcamp-1.4.7.xpi";
      sha256 = "f062b4619bd992bea657d7487e7b331e064421b23f6839bdd2a0276b8a06ba14";
      meta = with lib;
      {
        homepage = "https://github.com/hyphmongo/batchcamp";
        description = "Bulk downloader for your Bandcamp purchases";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "downloads"
          "cookies"
          "https://bandcamp.com/*"
          "https://*.bandcamp.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "behave" = buildFirefoxXpiAddon {
      pname = "behave";
      version = "0.9.7.1";
      addonId = "{17c7f098-dbb8-4f15-ad39-8b578da80f7e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3606644/behave-0.9.7.1.xpi";
      sha256 = "983b43da26b49df421186c5d550b27aad36e38761089c032eb18441d3ffd21d9";
      meta = with lib;
      {
        description = "A monitoring browser extension for pages acting as bad boys";
        license = licenses.gpl3;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "notifications"
          "storage"
          "<all_urls>"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "behind-the-overlay-revival" = buildFirefoxXpiAddon {
      pname = "behind-the-overlay-revival";
      version = "1.8.3";
      addonId = "{c0e1baea-b4cb-4b62-97f0-278392ff8c37}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1749632/behind_the_overlay_revival-1.8.3.xpi";
      sha256 = "95c9b03c87f2d02cae3625d85b3aab286b01647c84752811fb0be9b49b3f6a22";
      meta = with lib;
      {
        homepage = "https://gitlab.com/ivanruvalcaba/BehindTheOverlayRevival";
        description = "Click to close any overlay popup on any website.";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" "menus" "storage" "tabs" ];
        platforms = platforms.all;
      };
    };
    "belgium-eid" = buildFirefoxXpiAddon {
      pname = "belgium-eid";
      version = "1.0.32";
      addonId = "belgiumeid@eid.belgium.be";
      url = "https://addons.mozilla.org/firefox/downloads/file/3736679/belgium_eid-1.0.32.xpi";
      sha256 = "b76cdb139f08b8778094cf7594d5f8adb8962f3b79b10ab7e746f53d175263bc";
      meta = with lib;
      {
        homepage = "https://eid.belgium.be/";
        description = "Use the Belgian electronic identity card (eID) in Firefox";
        license = licenses.lgpl3;
        mozPermissions = [ "pkcs11" "notifications" "https://*.belgium.be/*" ];
        platforms = platforms.all;
      };
    };
    "betterttv" = buildFirefoxXpiAddon {
      pname = "betterttv";
      version = "7.6.5";
      addonId = "firefox@betterttv.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4305097/betterttv-7.6.5.xpi";
      sha256 = "364a1dadb2b3624abccccf10ced77889a6f6df5f456033ee9f31e270987c3a81";
      meta = with lib;
      {
        homepage = "https://betterttv.com";
        description = "Enhances Twitch and YouTube with new features, emotes, and more.";
        license = {
          shortName = "betterttv";
          fullName = "BetterTTV Terms of Service";
          url = "https://betterttv.com/terms";
          free = false;
        };
        mozPermissions = [ "scripting" "activeTab" "*://*.twitch.tv/*" ];
        platforms = platforms.all;
      };
    };
    "beyond-20" = buildFirefoxXpiAddon {
      pname = "beyond-20";
      version = "2.9.5";
      addonId = "beyond20@kakaroto.homelinux.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4327233/beyond_20-2.9.5.xpi";
      sha256 = "41a79ebeb9a8fbb5de3a23a052f1be2f22f7e2dfd9a5a71d921a1e4d871b4324";
      meta = with lib;
      {
        homepage = "https://beyond20.here-for-more.info";
        description = "Integrates the D&amp;D Beyond Character Sheet into Roll20 and Foundry VTT.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "tabs"
          "storage"
          "*://beyond20.kicks-ass.org/roll"
          "*://app.roll20.net/editor/"
          "*://*.dndbeyond.com/*"
          "*://*.forge-vtt.com/game"
          "*://*.dndbeyond.com/*characters/*"
          "*://*.dndbeyond.com/characters"
          "*://*.dndbeyond.com/monsters/*"
          "*://*.dndbeyond.com/vehicles/*"
          "*://*.dndbeyond.com/spells/*"
          "*://*.dndbeyond.com/my-encounters"
          "*://*.dndbeyond.com/encounters/*"
          "*://*.dndbeyond.com/combat-tracker/*"
          "*://*.dndbeyond.com/equipment/*"
          "*://*.dndbeyond.com/magic-items/*"
          "*://*.dndbeyond.com/feats/*"
          "*://*.dndbeyond.com/sources/*"
          "*://*.dndbeyond.com/classes/*"
          "*://*.dndbeyond.com/races/*"
          "*://app.roll20.net/editor/*"
        ];
        platforms = platforms.all;
      };
    };
    "bibbot" = buildFirefoxXpiAddon {
      pname = "bibbot";
      version = "0.37.0";
      addonId = "voebbot@stefanwehrmeyer.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4284684/bibbot-0.37.0.xpi";
      sha256 = "ca346b70870800db914f625db3fa6d31b5d9a9c65377aefe56b50471ce59641a";
      meta = with lib;
      {
        homepage = "https://github.com/stefanw/bibbot";
        description = "Durch ein Bibliothekskonto mit Pressedatenbankzugriff entfernt dieses Add-On die Paywall bei deutschen Nachrichtenseiten. Ein solches Bibliothekskonto ist Voraussetzung zur Nutzung des Add-On.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "storage"
          "https://*.genios.de/*"
          "https://www.spiegel.de/*"
          "https://www.zeit.de/*"
          "https://www.wiwo.de/*"
          "https://www.welt.de/*"
          "https://www.tagesspiegel.de/*"
          "https://www.sueddeutsche.de/*"
          "https://sz-magazin.sueddeutsche.de/*"
          "https://www.handelsblatt.com/*"
          "https://www.berliner-zeitung.de/*"
          "https://www.morgenpost.de/*"
          "https://www.nordkurier.de/*"
          "https://www.abendblatt.de/*"
          "https://www.moz.de/*"
          "https://www.noz.de/*"
          "https://www.waz.de/*"
          "https://www.heise.de/*"
          "https://www.maz-online.de/*"
          "https://www.lr-online.de/*"
          "https://www.nachrichten.at/*"
          "https://ga.de/*"
          "https://www.ksta.de/*"
          "https://www.rundschau-online.de/*"
          "https://rp-online.de/*"
          "https://www.tagesanzeiger.ch/*"
          "https://www.falter.at/*"
          "https://www.stuttgarter-zeitung.de/*"
          "https://www.stuttgarter-nachrichten.de/*"
          "https://www.ostsee-zeitung.de/*"
          "https://www.stimme.de/*"
          "https://kurier.at/*"
          "https://freizeit.at/*"
          "https://www.diepresse.com/*"
          "https://www.sn.at/*"
          "https://www.kleinezeitung.at/*"
          "https://www.vn.at/*"
          "https://www.thueringer-allgemeine.de/*"
          "https://www.mopo.de/*"
          "https://www.saechsische.de/*"
          "https://www.freiepresse.de/*"
          "https://www.haz.de/*"
          "https://www.lvz.de/*"
          "https://www.dnn.de/*"
          "https://www.swp.de/*"
          "https://www.ruhrnachrichten.de/*"
          "https://www.businessinsider.de/*"
          "https://www.badische-zeitung.de/*"
          "https://www.stern.de/*"
          "https://www.mittelbayerische.de/*"
          "https://www.tagblatt.de/*"
          "https://www.mz.de/*"
          "https://www.capital.de/*"
          "https://www.iz.de/*"
          "https://www.shz.de/*"
          "https://www.aerztezeitung.de/*"
          "https://www.geo.de/*"
          "https://www.nzz.ch/*"
          "https://www.manager-magazin.de/*"
          "https://www.nwzonline.de/*"
          "https://www.saarbruecker-zeitung.de/*"
          "https://www.idowa.de/*"
          "https://www.aachener-zeitung.de/*"
        ];
        platforms = platforms.all;
      };
    };
    "bitwarden" = buildFirefoxXpiAddon {
      pname = "bitwarden";
      version = "2024.7.1";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326285/bitwarden_password_manager-2024.7.1.xpi";
      sha256 = "28c505df3b615f6a3c829afdcff74584ddc5eb1d3fb35f9848c18470fad93772";
      meta = with lib;
      {
        homepage = "https://bitwarden.com";
        description = "At home, at work, or on the go, Bitwarden easily secures all your passwords, passkeys, and sensitive information.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "*://*/*"
          "tabs"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "clipboardRead"
          "clipboardWrite"
          "idle"
          "alarms"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "file:///*"
          "https://lastpass.com/export.php"
        ];
        platforms = platforms.all;
      };
    };
    "blocktube" = buildFirefoxXpiAddon {
      pname = "blocktube";
      version = "0.4.2";
      addonId = "{58204f8b-01c2-4bbc-98f8-9a90458fd9ef}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4247450/blocktube-0.4.2.xpi";
      sha256 = "bab25393b1d0a57d99d010112351bd89a66924412fb505c391d4b30d42194719";
      meta = with lib;
      {
        homepage = "https://github.com/amitbl/blocktube";
        description = "YouTube™ Content Blocker\nBlock channels and videos from YouTube™\nFast and easy";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "unlimitedStorage"
          "https://www.youtube.com/*"
          "https://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "boring-rss" = buildFirefoxXpiAddon {
      pname = "boring-rss";
      version = "0.5";
      addonId = "{45d4d1a3-4faa-42b7-9747-bcf2153310cd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3660917/boring_rss-0.5.xpi";
      sha256 = "23da27d92980bf0793cabf9722813a45cbf55a24a44434a217c3d38af4b2cdfb";
      meta = with lib;
      {
        homepage = "https://git.sr.ht/~tomf/boring-rss";
        description = "A low-permission button to find RSS/Atom feeds in the current page.";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" ];
        platforms = platforms.all;
      };
    };
    "brandon1024-find" = buildFirefoxXpiAddon {
      pname = "brandon1024-find";
      version = "2.2.1";
      addonId = "{6fa42eda-38ca-4126-96d5-3163f0de6900}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3825098/brandon1024_find-2.2.1.xpi";
      sha256 = "54f29a6839a83ef6b07f9fbeae1e6e7697d8416f16ce45d3bdc17ec5d8a243ca";
      meta = with lib;
      {
        homepage = "https://github.com/brandon1024/find/";
        description = "A find-in-page extension with support for regular expressions.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "activeTab"
          "storage"
          "contextMenus"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "british-english-dictionary-2" = buildFirefoxXpiAddon {
      pname = "british-english-dictionary-2";
      version = "3.3.5";
      addonId = "marcoagpinto@mail.telepac.pt";
      url = "https://addons.mozilla.org/firefox/downloads/file/4329597/british_english_dictionary_2-3.3.5.xpi";
      sha256 = "94667a4ba38053153a96c3fc7482275d022e133d5d8acf869d76798c69c8327d";
      meta = with lib;
      {
        homepage = "https://proofingtoolgui.org";
        description = "A fork of Mark Tyndall's add-on, based on David Bartlett's \nBritish Dictionary R1.19 for Firefox, Thunderbird and SeaMonkey.\n\nV3.3.5 has 140 000+ new words and also fixes.";
        license = licenses.lgpl3;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "brotab" = buildFirefoxXpiAddon {
      pname = "brotab";
      version = "1.4.0";
      addonId = "brotab_mediator@example.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3955334/brotab-1.4.0.xpi";
      sha256 = "1966f39933fadcc0d8b4a2344111d241874dc6ffec4fe8c261e3703be1d32e17";
      meta = with lib;
      {
        homepage = "https://github.com/balta2ar/brotab/";
        description = "Control your Firefox's tabs from command line";
        license = licenses.mit;
        mozPermissions = [ "nativeMessaging" "tabs" "activeTab" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "browserpass" = buildFirefoxXpiAddon {
      pname = "browserpass";
      version = "3.8.0";
      addonId = "browserpass@maximbaz.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4187654/browserpass_ce-3.8.0.xpi";
      sha256 = "5291d94443be41a80919605b0939c16cc62f9100a8b27df713b735856140a9a7";
      meta = with lib;
      {
        homepage = "https://github.com/browserpass/browserpass-extension";
        description = "Browserpass is a browser extension for Firefox and Chrome to retrieve login details from zx2c4's pass (<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fcd8dcb23434c51a78197a1c25d3e2277aa1bc764c827b4b4726ec5a5657eb64/http%3A//passwordstore.org\" rel=\"nofollow\">passwordstore.org</a>) straight from your browser. Tags: passwordstore, password store, password manager, passwordmanager, gpg";
        license = licenses.isc;
        mozPermissions = [
          "activeTab"
          "alarms"
          "tabs"
          "clipboardRead"
          "clipboardWrite"
          "nativeMessaging"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "bukubrow" = buildFirefoxXpiAddon {
      pname = "bukubrow";
      version = "5.0.3.0";
      addonId = "bukubrow@samhh.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3769984/bukubrow-5.0.3.0.xpi";
      sha256 = "4c9424d0f13df8f1f6ac605302c42bb30f3c138eb76c8d4ced5d45a637942913";
      meta = with lib;
      {
        homepage = "https://github.com/samhh/bukubrow";
        description = "Synchronise your browser bookmarks with Buku";
        license = licenses.gpl3;
        mozPermissions = [
          "nativeMessaging"
          "storage"
          "tabs"
          "contextMenus"
          "activeTab"
        ];
        platforms = platforms.all;
      };
    };
    "bulgarian-dictionary" = buildFirefoxXpiAddon {
      pname = "bulgarian-dictionary";
      version = "4.4.3";
      addonId = "bg-BG@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3609719/bulgarian_dictionary-4.4.3.xpi";
      sha256 = "f5aa20ff1954a00be98fbf20fe5a77f0115813b36c5fc14c6f0e713cb597d5b2";
      meta = with lib;
      {
        homepage = "http://bgoffice.sourceforge.net/";
        description = "Bulgarian spellchecking...";
        license = licenses.mpl20;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "bulkurlopener" = buildFirefoxXpiAddon {
      pname = "bulkurlopener";
      version = "1.11.3";
      addonId = "{c5b32a48-5514-4a46-81f2-075ebf3cbc29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3964817/bulkurlopener-1.11.3.xpi";
      sha256 = "7de50750a715d1c21a6d42b6526c323d4b0b1758b32aabf64c3280082be718c1";
      meta = with lib;
      {
        homepage = "https://bulkurlopener.com";
        description = "Allows user to open a list of url in one click.";
        license = licenses.mit;
        mozPermissions = [ "tabs" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "buster-captcha-solver" = buildFirefoxXpiAddon {
      pname = "buster-captcha-solver";
      version = "3.1.0";
      addonId = "{e58d3966-3d76-4cd9-8552-1582fbc800c1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4297951/buster_captcha_solver-3.1.0.xpi";
      sha256 = "6892c4e1777b6e5480bb4224c2503b62d1cb92b49996ee9948cb746110a351d8";
      meta = with lib;
      {
        homepage = "https://github.com/dessant/buster#readme";
        description = "Save time by asking Buster to solve CAPTCHAs for you.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "nativeMessaging"
          "<all_urls>"
          "https://google.com/recaptcha/api2/bframe*"
          "https://www.google.com/recaptcha/api2/bframe*"
          "https://google.com/recaptcha/enterprise/bframe*"
          "https://www.google.com/recaptcha/enterprise/bframe*"
          "https://recaptcha.net/recaptcha/api2/bframe*"
          "https://www.recaptcha.net/recaptcha/api2/bframe*"
          "https://recaptcha.net/recaptcha/enterprise/bframe*"
          "https://www.recaptcha.net/recaptcha/enterprise/bframe*"
          "http://127.0.0.1/buster/setup?session=*"
        ];
        platforms = platforms.all;
      };
    };
    "c-c-search-extension" = buildFirefoxXpiAddon {
      pname = "c-c-search-extension";
      version = "0.4.0";
      addonId = "{e737d9cb-82de-4f23-83c6-76f70a82229c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4145773/c_c_search_extension-0.4.0.xpi";
      sha256 = "abafbcb454bb0270d4dafdc1a0bce7810eae06226e33e685df9d2592256932dc";
      meta = with lib;
      {
        homepage = "https://cpp.extension.sh";
        description = "The ultimate search extension for C/C++";
        mozPermissions = [ "storage" "unlimitedStorage" ];
        platforms = platforms.all;
      };
    };
    "canvasblocker" = buildFirefoxXpiAddon {
      pname = "canvasblocker";
      version = "1.10.1";
      addonId = "CanvasBlocker@kkapsner.de";
      url = "https://addons.mozilla.org/firefox/downloads/file/4262820/canvasblocker-1.10.1.xpi";
      sha256 = "dae3b648f0b559b8b08cdad8adaaba2fcde3aa7baf0ffe9b2cbca5a3373c98b7";
      meta = with lib;
      {
        homepage = "https://github.com/kkapsner/CanvasBlocker/";
        description = "Alters some JS APIs to prevent fingerprinting.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "contextualIdentities"
          "cookies"
          "privacy"
        ];
        platforms = platforms.all;
      };
    };
    "capital-one-eno" = buildFirefoxXpiAddon {
      pname = "capital-one-eno";
      version = "4.4.0";
      addonId = "{4d5b7a5e-5232-9e45-97f4-f8e1ca2626e5}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4260140/capital_one_eno-4.4.0.xpi";
      sha256 = "5b2447a8a620b44367082147603a3b6fb939b6edfe7d52a116b1a4155080dd12";
      meta = with lib;
      {
        homepage = "https://www.capitalone.com/applications/eno/virtualnumbers/";
        description = "Shop more securely through your desktop browser with Eno®, your Capital One® assistant.";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "activeTab"
          "tabs"
          "storage"
          "cookies"
          "webRequest"
          "webRequestBlocking"
          "alarms"
          "https://*.capitalone.com/*"
          "http://*.capitalone.com/*"
          "https://*/*"
          "http://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "capture-print" = buildFirefoxXpiAddon {
      pname = "capture-print";
      version = "0.2.1";
      addonId = "{146f1820-2b0d-49ef-acbf-d85a6986e10c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/2222170/capture_print-0.2.1.xpi";
      sha256 = "b6b4dd9df712d0a1d5de683412a095b9836cf6763f7b75e86d03a91216091392";
      meta = with lib;
      {
        description = "This add-on lets you print a webpage's area easily.";
        license = licenses.mpl20;
        mozPermissions = [
          "menus"
          "activeTab"
          "<all_urls>"
          "clipboard"
          "notifications"
          "clipboardWrite"
        ];
        platforms = platforms.all;
      };
    };
    "castkodi" = buildFirefoxXpiAddon {
      pname = "castkodi";
      version = "7.11.0";
      addonId = "castkodi@regseb.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4314822/castkodi-7.11.0.xpi";
      sha256 = "ea4334092c3639174d55264ca2ea2a2d260e116b7a70418b2188560790261b64";
      meta = with lib;
      {
        homepage = "https://github.com/regseb/castkodi";
        description = "Cast videos and music from more than 50 sites (YouTube, Twitch, Vimeo, SoundCloud, torrents, …) to Kodi with context menu and remote control.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "contextMenus"
          "notifications"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "censor-tracker" = buildFirefoxXpiAddon {
      pname = "censor-tracker";
      version = "18.5.0";
      addonId = "{5d0d1f87-5991-42d3-98c3-54878ead1ed1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333567/censor_tracker-18.5.0.xpi";
      sha256 = "5c90e1be3d1a1aa9cdafe51c84a0d1cdacd2cbb1445bf0e800e82bf1d85ec4b4";
      meta = with lib;
      {
        homepage = "https://censortracker.org/en.html";
        description = "Censor Tracker is an extension that allows you to bypass Internet censorship, warns you about sites that transmit your data with government agencies, and detect new acts of censorship.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "webRequest"
          "alarms"
          "activeTab"
          "management"
          "notifications"
          "proxy"
          "storage"
          "tabs"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "chatgptbox" = buildFirefoxXpiAddon {
      pname = "chatgptbox";
      version = "2.5.8";
      addonId = "{b764208e-0a98-436d-a599-c1baa044f829}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333480/chatgptbox-2.5.8.xpi";
      sha256 = "fd7060017764d342622316c371cbcf77ee2f9c2446416c1bbb0e215dbb499205";
      meta = with lib;
      {
        homepage = "https://github.com/josStorer/chatGPTBox";
        description = "This extension integrates ChatGPT into the browser deeply, and provides chat windows, search engines and commonly used websites integration, and selection tools.";
        license = licenses.mit;
        mozPermissions = [
          "cookies"
          "storage"
          "contextMenus"
          "unlimitedStorage"
          "tabs"
          "webRequest"
          "https://*.chatgpt.com/*"
          "https://*.openai.com/"
          "https://*.bing.com/"
          "wss://*.bing.com/*"
          "https://*.poe.com/"
          "https://*.google.com/"
          "https://claude.ai/"
          "https://*.moonshot.cn/*"
          "<all_urls>"
          "https://*/*"
          "http://*/*"
          "file://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "clearcache" = buildFirefoxXpiAddon {
      pname = "clearcache";
      version = "4.0";
      addonId = "clearcache@michel.de.almeida";
      url = "https://addons.mozilla.org/firefox/downloads/file/4240060/clearcache-4.0.xpi";
      sha256 = "48ac3bae170fb6b411b3706f9a3aa5ad24309f8a9fd772c6310e5a9c066bdcb0";
      meta = with lib;
      {
        homepage = "https://github.com/TenSoja/clear-cache";
        description = "Clear browser cache with a single click or via the F9 key.\n\nF9 Fever! ;)";
        license = licenses.mpl20;
        mozPermissions = [ "browsingData" "notifications" "storage" ];
        platforms = platforms.all;
      };
    };
    "clearurls" = buildFirefoxXpiAddon {
      pname = "clearurls";
      version = "1.26.1";
      addonId = "{74145f27-f039-47ce-a470-a662b129930a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4064884/clearurls-1.26.1.xpi";
      sha256 = "e20168d63cb1b8ba3ad0de4cdb42c540d99fe00aa9679b59f49bccc36f106291";
      meta = with lib;
      {
        homepage = "https://clearurls.xyz/";
        description = "Removes tracking elements from URLs";
        license = licenses.lgpl3;
        mozPermissions = [
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "unlimitedStorage"
          "contextMenus"
          "webNavigation"
          "tabs"
          "downloads"
          "*://*.google.com/*"
          "*://*.google.ad/*"
          "*://*.google.ae/*"
          "*://*.google.com.af/*"
          "*://*.google.com.ag/*"
          "*://*.google.com.ai/*"
          "*://*.google.al/*"
          "*://*.google.am/*"
          "*://*.google.co.ao/*"
          "*://*.google.com.ar/*"
          "*://*.google.as/*"
          "*://*.google.at/*"
          "*://*.google.com.au/*"
          "*://*.google.az/*"
          "*://*.google.ba/*"
          "*://*.google.com.bd/*"
          "*://*.google.be/*"
          "*://*.google.bf/*"
          "*://*.google.bg/*"
          "*://*.google.com.bh/*"
          "*://*.google.bi/*"
          "*://*.google.bj/*"
          "*://*.google.com.bn/*"
          "*://*.google.com.bo/*"
          "*://*.google.com.br/*"
          "*://*.google.bs/*"
          "*://*.google.bt/*"
          "*://*.google.co.bw/*"
          "*://*.google.by/*"
          "*://*.google.com.bz/*"
          "*://*.google.ca/*"
          "*://*.google.cd/*"
          "*://*.google.cf/*"
          "*://*.google.cg/*"
          "*://*.google.ch/*"
          "*://*.google.ci/*"
          "*://*.google.co.ck/*"
          "*://*.google.cl/*"
          "*://*.google.cm/*"
          "*://*.google.cn/*"
          "*://*.google.com.co/*"
          "*://*.google.co.cr/*"
          "*://*.google.com.cu/*"
          "*://*.google.cv/*"
          "*://*.google.com.cy/*"
          "*://*.google.cz/*"
          "*://*.google.de/*"
          "*://*.google.dj/*"
          "*://*.google.dk/*"
          "*://*.google.dm/*"
          "*://*.google.com.do/*"
          "*://*.google.dz/*"
          "*://*.google.com.ec/*"
          "*://*.google.ee/*"
          "*://*.google.com.eg/*"
          "*://*.google.es/*"
          "*://*.google.com.et/*"
          "*://*.google.fi/*"
          "*://*.google.com.fj/*"
          "*://*.google.fm/*"
          "*://*.google.fr/*"
          "*://*.google.ga/*"
          "*://*.google.ge/*"
          "*://*.google.gg/*"
          "*://*.google.com.gh/*"
          "*://*.google.com.gi/*"
          "*://*.google.gl/*"
          "*://*.google.gm/*"
          "*://*.google.gp/*"
          "*://*.google.gr/*"
          "*://*.google.com.gt/*"
          "*://*.google.gy/*"
          "*://*.google.com.hk/*"
          "*://*.google.hn/*"
          "*://*.google.hr/*"
          "*://*.google.ht/*"
          "*://*.google.hu/*"
          "*://*.google.co.id/*"
          "*://*.google.ie/*"
          "*://*.google.co.il/*"
          "*://*.google.im/*"
          "*://*.google.co.in/*"
          "*://*.google.iq/*"
          "*://*.google.is/*"
          "*://*.google.it/*"
          "*://*.google.je/*"
          "*://*.google.com.jm/*"
          "*://*.google.jo/*"
          "*://*.google.co.jp/*"
          "*://*.google.co.ke/*"
          "*://*.google.com.kh/*"
          "*://*.google.ki/*"
          "*://*.google.kg/*"
          "*://*.google.co.kr/*"
          "*://*.google.com.kw/*"
          "*://*.google.kz/*"
          "*://*.google.la/*"
          "*://*.google.com.lb/*"
          "*://*.google.li/*"
          "*://*.google.lk/*"
          "*://*.google.co.ls/*"
          "*://*.google.lt/*"
          "*://*.google.lu/*"
          "*://*.google.lv/*"
          "*://*.google.com.ly/*"
          "*://*.google.co.ma/*"
          "*://*.google.md/*"
          "*://*.google.me/*"
          "*://*.google.mg/*"
          "*://*.google.mk/*"
          "*://*.google.ml/*"
          "*://*.google.com.mm/*"
          "*://*.google.mn/*"
          "*://*.google.ms/*"
          "*://*.google.com.mt/*"
          "*://*.google.mu/*"
          "*://*.google.mv/*"
          "*://*.google.mw/*"
          "*://*.google.com.mx/*"
          "*://*.google.com.my/*"
          "*://*.google.co.mz/*"
          "*://*.google.com.na/*"
          "*://*.google.com.nf/*"
          "*://*.google.com.ng/*"
          "*://*.google.com.ni/*"
          "*://*.google.ne/*"
          "*://*.google.nl/*"
          "*://*.google.no/*"
          "*://*.google.com.np/*"
          "*://*.google.nr/*"
          "*://*.google.nu/*"
          "*://*.google.co.nz/*"
          "*://*.google.com.om/*"
          "*://*.google.com.pa/*"
          "*://*.google.com.pe/*"
          "*://*.google.com.pg/*"
          "*://*.google.com.ph/*"
          "*://*.google.com.pk/*"
          "*://*.google.pl/*"
          "*://*.google.pn/*"
          "*://*.google.com.pr/*"
          "*://*.google.ps/*"
          "*://*.google.pt/*"
          "*://*.google.com.py/*"
          "*://*.google.com.qa/*"
          "*://*.google.ro/*"
          "*://*.google.ru/*"
          "*://*.google.rw/*"
          "*://*.google.com.sa/*"
          "*://*.google.com.sb/*"
          "*://*.google.sc/*"
          "*://*.google.se/*"
          "*://*.google.com.sg/*"
          "*://*.google.sh/*"
          "*://*.google.si/*"
          "*://*.google.sk/*"
          "*://*.google.com.sl/*"
          "*://*.google.sn/*"
          "*://*.google.so/*"
          "*://*.google.sm/*"
          "*://*.google.sr/*"
          "*://*.google.st/*"
          "*://*.google.com.sv/*"
          "*://*.google.td/*"
          "*://*.google.tg/*"
          "*://*.google.co.th/*"
          "*://*.google.com.tj/*"
          "*://*.google.tk/*"
          "*://*.google.tl/*"
          "*://*.google.tm/*"
          "*://*.google.tn/*"
          "*://*.google.to/*"
          "*://*.google.com.tr/*"
          "*://*.google.tt/*"
          "*://*.google.com.tw/*"
          "*://*.google.co.tz/*"
          "*://*.google.com.ua/*"
          "*://*.google.co.ug/*"
          "*://*.google.co.uk/*"
          "*://*.google.com.uy/*"
          "*://*.google.co.uz/*"
          "*://*.google.com.vc/*"
          "*://*.google.co.ve/*"
          "*://*.google.vg/*"
          "*://*.google.co.vi/*"
          "*://*.google.com.vn/*"
          "*://*.google.vu/*"
          "*://*.google.ws/*"
          "*://*.google.rs/*"
          "*://*.google.co.za/*"
          "*://*.google.co.zm/*"
          "*://*.google.co.zw/*"
          "*://*.google.cat/*"
          "*://*.yandex.ru/*"
          "*://*.yandex.com/*"
          "*://*.ya.ru/*"
        ];
        platforms = platforms.all;
      };
    };
    "cliget" = buildFirefoxXpiAddon {
      pname = "cliget";
      version = "2.1.0";
      addonId = "cliget@zaidabdulla.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3707199/cliget-2.1.0.xpi";
      sha256 = "5277da8f3b051fc1c05742520eecd5be7ea445638161d2c86f546ba27246db61";
      meta = with lib;
      {
        homepage = "https://github.com/zaidka/cliget";
        description = "Download login-protected files from the command line using curl, wget or aria2.";
        license = licenses.mpl20;
        mozPermissions = [ "webRequest" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "close-other-windows" = buildFirefoxXpiAddon {
      pname = "close-other-windows";
      version = "0.2resigned1";
      addonId = "{fab4ea0f-e0d3-4bb4-9515-aea14d709f69}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4271965/close_other_windows-0.2resigned1.xpi";
      sha256 = "98428363daef4acafd983f37125c4c24f1f843c76e801b2fa5ca3a9f71a8db6a";
      meta = with lib;
      {
        description = "Adds a button to close all tabs in other windows which are not pinned";
        license = licenses.mit;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "codecov" = buildFirefoxXpiAddon {
      pname = "codecov";
      version = "0.4.6";
      addonId = "{f3924b0d-e29f-4593-b605-084b3d71ed9d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336244/codecov-0.4.6.xpi";
      sha256 = "2209bee4277834fa1b9dd6209a0ff70de975e25318e5d1c9f0c51fa7e0f03020";
      meta = with lib;
      {
        homepage = "https://about.codecov.io";
        description = "Codecov Browser Extension\n\nAdds Codecov coverage data and line annotations to public and private repositories on GitHub.";
        license = licenses.asl20;
        mozPermissions = [
          "storage"
          "scripting"
          "activeTab"
          "*://github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "commafeed" = buildFirefoxXpiAddon {
      pname = "commafeed";
      version = "3.3.2";
      addonId = "firefox@commafeed.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4126587/commafeed-3.3.2.xpi";
      sha256 = "44ce246de1cd163891c6ddb42e0c1f2b50e4451d023821293795c8c9e695465e";
      meta = with lib;
      {
        description = "The extension will show an action next to the address bar with the count of your unread articles.\nClicking the button will either:\n\n-   show CommaFeed in a popup\n-   open CommaFeed in a new tab\n-   open next unread article in a new tab";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "alarms" "*://*/*" ];
        platforms = platforms.all;
      };
    };
    "competitive-companion" = buildFirefoxXpiAddon {
      pname = "competitive-companion";
      version = "2.54.0";
      addonId = "{74e326aa-c645-4495-9287-b6febc5565a7}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4331434/competitive_companion-2.54.0.xpi";
      sha256 = "498d27e0a90cec115387128779757baa0dc2e47f37a1c3a7708ddfd07570c28a";
      meta = with lib;
      {
        homepage = "https://github.com/jmerle/competitive-companion";
        description = "Parses competitive programming problems and sends them to various tools like CP Editor and CPH.";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "contextMenus" "storage" "scripting" ];
        platforms = platforms.all;
      };
    };
    "conex" = buildFirefoxXpiAddon {
      pname = "conex";
      version = "0.9.8resigned1";
      addonId = "{ec9d70ea-0229-49c0-bbf7-0df9bbccde35}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272819/conex-0.9.8resigned1.xpi";
      sha256 = "4b1f0eab09dea1aada9069be1c79996ac32d905614e489994e29de55f0762c88";
      meta = with lib;
      {
        homepage = "https://github.com/kesselborn/conex#conex";
        description = "TabGroups married with Tab Containers and bookmark  &amp; history search";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "contextualIdentities"
          "cookies"
          "menus"
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "consent-o-matic" = buildFirefoxXpiAddon {
      pname = "consent-o-matic";
      version = "1.1.0";
      addonId = "gdpr@cavi.au.dk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298698/consent_o_matic-1.1.0.xpi";
      sha256 = "c23631cdf746fcf2896e99ba0dbc6192bd92c24275d05b0802dc7d7038b4815a";
      meta = with lib;
      {
        homepage = "https://consentomatic.au.dk/";
        description = "Automatic handling of GDPR consent forms";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "tabs" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "container-proxy" = buildFirefoxXpiAddon {
      pname = "container-proxy";
      version = "0.1.22";
      addonId = "contaner-proxy@bekh-ivanov.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/3865750/container_proxy-0.1.22.xpi";
      sha256 = "d1b82cecf0c2a136085a380540698cd6bcc43d7348364454da687d3d49cb2e21";
      meta = with lib;
      {
        homepage = "https://github.com/bekh6ex/firefox-container-proxy";
        description = "Allows Firefox user assign different proxies to be used in different containers";
        license = licenses.bsd2;
        mozPermissions = [
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "contextualIdentities"
          "cookies"
          "proxy"
        ];
        platforms = platforms.all;
      };
    };
    "container-tab-groups" = buildFirefoxXpiAddon {
      pname = "container-tab-groups";
      version = "11.10.0.200";
      addonId = "tab-array@menhera.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4135330/container_tab_groups-11.10.0.200.xpi";
      sha256 = "119f633c35bcf643ede94ee25b2a609892765f79390556f0ede7b25e7704df72";
      meta = with lib;
      {
        homepage = "https://github.com/menhera-org/TabArray";
        description = "Chrome-like tab groups using private and isolated containers: The ultimate tab manager and groups for Firefox.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "tabHide"
          "<all_urls>"
          "cookies"
          "contextualIdentities"
          "menus"
          "menus.overrideContext"
          "storage"
          "browserSettings"
          "privacy"
          "webRequest"
          "webRequestBlocking"
          "sessions"
          "browsingData"
          "theme"
          "alarms"
          "scripting"
          "proxy"
        ];
        platforms = platforms.all;
      };
    };
    "container-tabs-sidebar" = buildFirefoxXpiAddon {
      pname = "container-tabs-sidebar";
      version = "1.2.0";
      addonId = "containertabssidebar@maciekmm.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4248024/container_tabs_sidebar-1.2.0.xpi";
      sha256 = "03a4b63c9283be40d29ddc41aefc169afd90d6188cba15dbbd01ed80db606bc1";
      meta = with lib;
      {
        homepage = "https://github.com/maciekmm/container-tabs-sidebar";
        description = "Show tabs in a sidebar grouped by privacy containers.";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "contextualIdentities"
          "cookies"
          "menus"
          "menus.overrideContext"
          "storage"
          "sessions"
        ];
        platforms = platforms.all;
      };
    };
    "containerise" = buildFirefoxXpiAddon {
      pname = "containerise";
      version = "3.9.0";
      addonId = "containerise@kinte.sh";
      url = "https://addons.mozilla.org/firefox/downloads/file/3724805/containerise-3.9.0.xpi";
      sha256 = "bf511aa160512c5ece421d472977973d92e1609a248020e708561382aa10d1e5";
      meta = with lib;
      {
        homepage = "https://github.com/kintesh/containerise";
        description = "Automatically open websites in a dedicated container. Simply add rules to map domain or subdomain to your container.";
        license = licenses.mit;
        mozPermissions = [
          "contextualIdentities"
          "cookies"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "control-panel-for-twitter" = buildFirefoxXpiAddon {
      pname = "control-panel-for-twitter";
      version = "4.2.5";
      addonId = "{5cce4ab5-3d47-41b9-af5e-8203eea05245}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337609/control_panel_for_twitter-4.2.5.xpi";
      sha256 = "b7025a2edbd8f2b19d291f30cc0fa498a2688081a692fb97e5cedd6dc0e148c4";
      meta = with lib;
      {
        homepage = "https://github.com/insin/control-panel-for-twitter";
        description = "Gives you more control over Twitter and adds missing features and UI improvements";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "https://twitter.com/*"
          "https://mobile.twitter.com/*"
          "https://x.com/*"
          "https://mobile.x.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "cookie-autodelete" = buildFirefoxXpiAddon {
      pname = "cookie-autodelete";
      version = "3.8.2";
      addonId = "CookieAutoDelete@kennydo.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4040738/cookie_autodelete-3.8.2.xpi";
      sha256 = "b02438aa5df2a79eb743da1b629b80d8c48114c9d030abb5538b591754e30f74";
      meta = with lib;
      {
        homepage = "https://github.com/Cookie-AutoDelete/Cookie-AutoDelete";
        description = "Control your cookies! This WebExtension is inspired by Self Destructing Cookies. When a tab closes, any cookies not being used are automatically deleted. Keep the ones you trust (forever/until restart) while deleting the rest. Containers Supported";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "alarms"
          "browsingData"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "notifications"
          "storage"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "cookie-quick-manager" = buildFirefoxXpiAddon {
      pname = "cookie-quick-manager";
      version = "0.5rc2";
      addonId = "{60f82f00-9ad5-4de5-b31c-b16a47c51558}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3343599/cookie_quick_manager-0.5rc2.xpi";
      sha256 = "b826e443438c880b3998e42e099d0e1949ff51489c788b50193b92ef80426c6e";
      meta = with lib;
      {
        homepage = "https://github.com/ysard/cookie-quick-manager";
        description = "An addon to manage cookies (view, search, create, edit, remove, backup, restore, protect from deletion and much more). Firefox 57+ is supported.";
        license = licenses.gpl3;
        mozPermissions = [
          "cookies"
          "<all_urls>"
          "activeTab"
          "storage"
          "browsingData"
          "contextualIdentities"
          "privacy"
        ];
        platforms = platforms.all;
      };
    };
    "cookies-txt" = buildFirefoxXpiAddon {
      pname = "cookies-txt";
      version = "0.6";
      addonId = "{12cf650b-1822-40aa-bff0-996df6948878}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4203553/cookies_txt-0.6.xpi";
      sha256 = "62344e9fc9c24f8dad1fd2ee48b7b90fe818db4216c9e950c5070886593b28ad";
      meta = with lib;
      {
        description = "Exports all cookies to a Netscape HTTP Cookie File, as used by curl, wget, and youtube-dl, among others.";
        license = licenses.gpl3;
        mozPermissions = [
          "cookies"
          "downloads"
          "contextualIdentities"
          "<all_urls>"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "copy-as-org-mode" = buildFirefoxXpiAddon {
      pname = "copy-as-org-mode";
      version = "0.2.0";
      addonId = "{59e590fc-6635-45fe-89c7-af637eb4b9c0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3939068/copy_as_org_mode-0.2.0.xpi";
      sha256 = "dcd02dbd1a753928b82e772055a0532421f94bb40ae23b0606e6e91117909cce";
      meta = with lib;
      {
        homepage = "https://github.com/kuanyui/copy-as-org-mode";
        description = "Copy selection or link of current page as Org-mode format text!";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "menus"
          "storage"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "copy-link-text" = buildFirefoxXpiAddon {
      pname = "copy-link-text";
      version = "1.6.4";
      addonId = "{b144be59-6bdc-41e0-9141-9f8d00373d93}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3883720/copy_link_text_webextension-1.6.4.xpi";
      sha256 = "21fa5ee67f4e751e9b6f8b37ed75edd3d9d00ae57ea6227eaece965a490b4ce8";
      meta = with lib;
      {
        homepage = "https://github.com/def00111/copy-link-text";
        description = "Copy the text of the link.";
        license = licenses.mpl20;
        mozPermissions = [ "clipboardWrite" "menus" ];
        platforms = platforms.all;
      };
    };
    "copy-selected-links" = buildFirefoxXpiAddon {
      pname = "copy-selected-links";
      version = "2.4.1";
      addonId = "jid1-vs5odTmtIydjMg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3860788/copy_selected_links-2.4.1.xpi";
      sha256 = "f32e2a30518dfcf72cfd39eda5015c85795d694c09b9d29ed0c62f67ed8768e1";
      meta = with lib;
      {
        homepage = "https://gitlab.com/Marnes/webextensions";
        description = "Right-click selected text to copy the URL of any links it contains.";
        license = licenses.mpl20;
        mozPermissions = [
          "notifications"
          "contextMenus"
          "storage"
          "activeTab"
        ];
        platforms = platforms.all;
      };
    };
    "copy-selected-tabs-to-clipboard" = buildFirefoxXpiAddon {
      pname = "copy-selected-tabs-to-clipboard";
      version = "1.6.6";
      addonId = "copy-selected-tabs-to-clipboard@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4331022/copy_selected_tabs_to_clipboar-1.6.6.xpi";
      sha256 = "d42b848e9bead731e9c57d92c9d0d8979b2c12d2372c311ba13e11f91943f627";
      meta = with lib;
      {
        description = "Provides ability to copy title and URL of selected tabs to the clipboard.";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "contextualIdentities"
          "cookies"
          "menus"
          "notifications"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "copy-selection-as-markdown" = buildFirefoxXpiAddon {
      pname = "copy-selection-as-markdown";
      version = "0.22.0";
      addonId = "{db9a72da-7bc5-4805-bcea-da3cb1a15316}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4250904/copy_selection_as_markdown-0.22.0.xpi";
      sha256 = "5d76d73b93762b2a42781cc564de20e982387b428664e96bda50b3066db9ac08";
      meta = with lib;
      {
        homepage = "https://github.com/0x6b/copy-selection-as-markdown";
        description = "Copy title, URL, and selection as Markdown.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "contextMenus"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "dark-background-light-text" = buildFirefoxXpiAddon {
      pname = "dark-background-light-text";
      version = "0.7.6";
      addonId = "jid1-QoFqdK4qzUfGWQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3722915/dark_background_light_text-0.7.6.xpi";
      sha256 = "1821db8eb7fb7910ca3e2ef7da283a2300e05a398c0e8c58763e0226da7dcd5b";
      meta = with lib;
      {
        homepage = "https://github.com/m-khvoinitsky/dark-background-light-text-extension";
        description = "Make every web page (or just the pages you want) display light text on dark backgrounds. All color variations are fully customizable.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "tabs"
          "storage"
          "browserSettings"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "dark-mode-webextension" = buildFirefoxXpiAddon {
      pname = "dark-mode-webextension";
      version = "0.4.5";
      addonId = "{174b2d58-b983-4501-ab4b-07e71203cb43}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3970612/dark_mode_webextension-0.4.5.xpi";
      sha256 = "3c270ae9ed6c5dd69bd19b6f634741648ccd51ded24dd4b3592eb55c2cb3fc09";
      meta = with lib;
      {
        homepage = "https://mybrowseraddon.com/dark-mode.html";
        description = "A global dark theme for the web";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "<all_urls>" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "dark-mode-website-switcher" = buildFirefoxXpiAddon {
      pname = "dark-mode-website-switcher";
      version = "2.0";
      addonId = "dark-mode-website-switcher@rugk.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3878543/dark_mode_website_switcher-2.0.xpi";
      sha256 = "be18aeadee3248fa1e2866eac7011f8008311f82f0456fd4fcb796511218a16e";
      meta = with lib;
      {
        homepage = "https://github.com/rugk/website-dark-mode-switcher";
        description = "Adjusts the website's color scheme, so that all websites are dark by default, if they have a special design for that. It makes websites look dark even with a light system style.";
        license = licenses.mit;
        mozPermissions = [ "storage" "browserSettings" ];
        platforms = platforms.all;
      };
    };
    "dark-scroll-for-tweetdeck" = buildFirefoxXpiAddon {
      pname = "dark-scroll-for-tweetdeck";
      version = "2.0.0";
      addonId = "{759d3eb8-baf1-49e0-938b-0f963fdac3ae}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1754743/dark_scroll_for_tweetdeck-2.0.0.xpi";
      sha256 = "e0f4e625eda09e9c8300ef650373d5a582a8c77c18eba572aa39d0bd8e3eb596";
      meta = with lib;
      {
        description = "Makes the scrollbars on TweetDeck and other sites dark in Firefox. This should be done by the site itself, not by an addon :(\n\nImage based on Scroll by Juan Pablo Bravo, CL <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/f9c83bffbd0bf3bfa6ea46deecfa4fa4e9d5a69f49f323c020877e0bf283efac/https%3A//thenounproject.com/term/scroll/18607/\" rel=\"nofollow\">https://thenounproject.com/term/scroll/18607/</a>";
        license = licenses.lgpl3;
        mozPermissions = [ "activeTab" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "darkcloud" = buildFirefoxXpiAddon {
      pname = "darkcloud";
      version = "1.6.6";
      addonId = "{534c6d6e-de02-417d-a38e-4007d33914b6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333468/darkcloud-1.6.6.xpi";
      sha256 = "f1960e87c73b73fed40a943f9a078e9077d90818fd683f7bddab826d37153334";
      meta = with lib;
      {
        homepage = "http://acroma.rf.gd/darkcloud";
        description = "Changes <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/f541ff9b58fe8ef09cbadbdd7a6c017f9c859ce781a6840fb9818a092dc29d6f/http%3A//soundcloud.com\">soundcloud.com</a> to a dark theme.";
        license = licenses.mpl20;
        mozPermissions = [ "*://*.soundcloud.com/*" ];
        platforms = platforms.all;
      };
    };
    "darkreader" = buildFirefoxXpiAddon {
      pname = "darkreader";
      version = "4.9.88";
      addonId = "addon@darkreader.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4317971/darkreader-4.9.88.xpi";
      sha256 = "7a965d5880be9fbf8be81a106acd1968263b1acc2db0add580b30f2dd71954b3";
      meta = with lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
        mozPermissions = [
          "alarms"
          "contextMenus"
          "storage"
          "tabs"
          "theme"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "dashlane" = buildFirefoxXpiAddon {
      pname = "dashlane";
      version = "6.2433.3";
      addonId = "jetpack-extension@dashlane.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336120/dashlane-6.2433.3.xpi";
      sha256 = "5593813a0eff8f1582ce0f55a5b29dfadf5dfe6b0002e43fa818fa42f8c100b5";
      meta = with lib;
      {
        homepage = "https://www.dashlane.com";
        description = "Dashlane makes the internet easier. Save all your passwords, fill forms fast, and keep your data accessible and safe.";
        license = {
          shortName = "dashlane";
          fullName = "Dashlane Terms of Service";
          url = "https://www.dashlane.com/terms";
          free = false;
        };
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "contextMenus"
          "cookies"
          "idle"
          "privacy"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "dearrow" = buildFirefoxXpiAddon {
      pname = "dearrow";
      version = "1.6.4";
      addonId = "deArrow@ajay.app";
      url = "https://addons.mozilla.org/firefox/downloads/file/4307344/dearrow-1.6.4.xpi";
      sha256 = "b445a00128140109a5d22c9f03fc76bc9b6ceef4f2be676fa90484e4a8023078";
      meta = with lib;
      {
        homepage = "https://dearrow.ajay.app";
        description = "Crowdsourcing titles and thumbnails to be descriptive and not sensational";
        license = licenses.lgpl3;
        mozPermissions = [
          "storage"
          "unlimitedStorage"
          "alarms"
          "https://sponsor.ajay.app/*"
          "https://dearrow-thumb.ajay.app/*"
          "https://*.googlevideo.com/*"
          "https://*.youtube.com/*"
          "https://www.youtube-nocookie.com/embed/*"
          "scripting"
        ];
        platforms = platforms.all;
      };
    };
    "decentraleyes" = buildFirefoxXpiAddon {
      pname = "decentraleyes";
      version = "2.0.19";
      addonId = "jid1-BoFifL9Vbdl2zQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255788/decentraleyes-2.0.19.xpi";
      sha256 = "105d65bf8189d527251647d0452715c5725af6065fba67cd08187190aae4a98f";
      meta = with lib;
      {
        homepage = "https://decentraleyes.org";
        description = "Protects you against tracking through \"free\", centralized, content delivery. It prevents a lot of requests from reaching networks like Google Hosted Libraries, and serves local files to keep sites from breaking. Complements regular content blockers.";
        license = licenses.mpl20;
        mozPermissions = [
          "*://*/*"
          "privacy"
          "storage"
          "unlimitedStorage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "deutsch-de-language-pack" = buildFirefoxXpiAddon {
      pname = "deutsch-de-language-pack";
      version = "130.0.20240821.91813";
      addonId = "langpack-de@firefox.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340314/deutsch_de_language_pack-130.0.20240821.91813.xpi";
      sha256 = "e7a4a06a07a29308649fe122f652fe829aae6e8b600942137794dbfc8dda16f5";
      meta = with lib;
      {
        description = "Firefox Language Pack for Deutsch (de) – German";
        license = licenses.mpl20;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "df-youtube" = buildFirefoxXpiAddon {
      pname = "df-youtube";
      version = "1.13.504";
      addonId = "dfyoutube@example.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3449086/df_youtube-1.13.504.xpi";
      sha256 = "5b10ae345c2fe1151bb760313738b9b3860a781bbc54276e95cfedba65f2cdf3";
      meta = with lib;
      {
        description = "Allow yourself to focus while using YouTube for work, recreation or education.  Disable autoplay, remove sidebar, hide feed, comments, and more.";
        license = licenses.mpl20;
        mozPermissions = [
          "https://api.mailgun.net/*"
          "storage"
          "tabs"
          "notifications"
          "https://www.youtube.com/*"
          "https://www.youtube.com/?*"
          "https://www.youtube.com/watch*"
        ];
        platforms = platforms.all;
      };
    };
    "dictionaries" = buildFirefoxXpiAddon {
      pname = "dictionaries";
      version = "5.1.4";
      addonId = "revir.qing@gmail.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4335078/dictionaries-5.1.4.xpi";
      sha256 = "f1f179e81b33e5619a2eb789891b37ad350b20d99f963be3721f1280e6fdcbb6";
      meta = with lib;
      {
        homepage = "https://github.com/revir/dictionaries";
        description = "Dictionariez: This extension help you reading articles, looking up words of any language in various dictionaries, and exporting words to Anki, facilitating your language learning process.";
        license = licenses.gpl2;
        mozPermissions = [
          "activeTab"
          "tabs"
          "storage"
          "contextMenus"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "dictionary-german" = buildFirefoxXpiAddon {
      pname = "dictionary-german";
      version = "2.1";
      addonId = "de-DE@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4034565/dictionary_german-2.1.xpi";
      sha256 = "00ef6eb3c10171a87fb22ab6e516846678b73c56ae828cc19d11e32e43b8457a";
      meta = with lib;
      {
        description = "German Dictionary (new Orthography) for spellchecking in Firefox";
        license = licenses.lgpl21;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "dictionary-spanish" = buildFirefoxXpiAddon {
      pname = "dictionary-spanish";
      version = "3.2.8";
      addonId = "es-es@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4158842/diccionario_de_espanol_espana-3.2.8.xpi";
      sha256 = "645e6070be16e9fe422ffcf1789325f0dd6494c3c57548c4deb717262fb59b72";
      meta = with lib;
      {
        homepage = "http://www.proyectonave.es/productos/extensiones/diccionario-es-ES";
        description = "Spanish/Spain Dictionary";
        license = licenses.mpl20;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "disable-javascript" = buildFirefoxXpiAddon {
      pname = "disable-javascript";
      version = "2.3.2resigned1";
      addonId = "{41f9e51d-35e4-4b29-af66-422ff81c8b41}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4273529/disable_javascript-2.3.2resigned1.xpi";
      sha256 = "3fe160035a3bcafbf3acb11e9d672e7ce022afc21444ec66b0eb99f72dd40466";
      meta = with lib;
      {
        homepage = "https://github.com/dpacassi/disable-javascript";
        description = "Adds the ability to disable JavaScript for specific sites or specific tabs.\nYou can customize the default JS state (on or off), the disable behavior (by domain or by tab) and much more.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "menus"
          "contextMenus"
        ];
        platforms = platforms.all;
      };
    };
    "disconnect" = buildFirefoxXpiAddon {
      pname = "disconnect";
      version = "20.3.1.2";
      addonId = "2.0@disconnect.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4240055/disconnect-20.3.1.2.xpi";
      sha256 = "5fe7ac089f9de8a10520813b527e76d95248aba8c8414e2dc2c359c505ca3b31";
      meta = with lib;
      {
        homepage = "https://disconnect.me/";
        description = "Make the web faster, more private, and more secure.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "display-_anchors" = buildFirefoxXpiAddon {
      pname = "display-_anchors";
      version = "1.4resigned1";
      addonId = "display-anchors@robwu.nl";
      url = "https://addons.mozilla.org/firefox/downloads/file/4271984/display__anchors-1.4resigned1.xpi";
      sha256 = "5028274d94e887319937d4dcdeb3a06d21746523ac5e104fb4775eb22d943c60";
      meta = with lib;
      {
        homepage = "https://github.com/Rob--W/display-anchors";
        description = "Displays anchors for all content in the current web page without breaking the layout.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "notifications"
          "contextMenus"
          "activeTab"
        ];
        platforms = platforms.all;
      };
    };
    "docsafterdark" = buildFirefoxXpiAddon {
      pname = "docsafterdark";
      version = "0.6.3";
      addonId = "{e8ffc3db-2875-4c7f-af38-d03e7f7f8ab9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4230160/docsafterdark-0.6.3.xpi";
      sha256 = "8eadd0a5661e8803ef6e7a96553d6e52eb7fd927251303127d4722d6afae3ab1";
      meta = with lib;
      {
        homepage = "https://waymondrang.com/docsafterdark/";
        description = "Modern, dark mode for Google Docs";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "*://docs.google.com/document/*" ];
        platforms = platforms.all;
      };
    };
    "don-t-fuck-with-paste" = buildFirefoxXpiAddon {
      pname = "don-t-fuck-with-paste";
      version = "2.7";
      addonId = "DontFuckWithPaste@raim.ist";
      url = "https://addons.mozilla.org/firefox/downloads/file/3630212/don_t_fuck_with_paste-2.7.xpi";
      sha256 = "ef17dcef7e2034a25982a106e54d19e24c9f226434a396a808195ef0de021a40";
      meta = with lib;
      {
        homepage = "https://github.com/aaronraimist/DontFuckWithPaste";
        description = "This add-on stops websites from blocking copy and paste for password fields and other input fields.";
        license = licenses.mit;
        mozPermissions = [ "storage" "tabs" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "download-with-jdownloader" = buildFirefoxXpiAddon {
      pname = "download-with-jdownloader";
      version = "0.3.3";
      addonId = "{03e07985-30b0-4ae0-8b3e-0c7519b9bdf6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328995/download_with_jdownloader-0.3.3.xpi";
      sha256 = "bce14f25d60beca7740c636071fc0a731f26c477cdb1921a2660578f3e4512bc";
      meta = with lib;
      {
        homepage = "https://webextension.org/listing/download-with.html?from=jdownloader";
        description = "when activated, interrupts the built-in download manager to direct links to JDownloader";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "nativeMessaging"
          "notifications"
          "downloads"
          "contextMenus"
          "activeTab"
          "scripting"
        ];
        platforms = platforms.all;
      };
    };
    "dracula-dark-colorscheme" = buildFirefoxXpiAddon {
      pname = "dracula-dark-colorscheme";
      version = "1.10.0";
      addonId = "{b743f56d-1cc1-4048-8ba6-f9c2ab7aa54d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4224518/dracula_dark_colorscheme-1.10.0.xpi";
      sha256 = "cf083076fc8d7fb5c44664648c4c029096896ef38104ee0d3fbe9a6d828943e1";
      meta = with lib;
      {
        homepage = "https://draculatheme.com/firefox";
        description = "Official Dracula theme for firefox.";
        license = licenses.cc-by-nc-sa-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "dualsub" = buildFirefoxXpiAddon {
      pname = "dualsub";
      version = "2.46.2";
      addonId = "{104db41e-43f7-4484-bda8-a59536364925}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340016/dualsub-2.46.2.xpi";
      sha256 = "f837fae18bc1afd7bc382571a7f2fdd0a7dc2740eaea067b5314f3231a121786";
      meta = with lib;
      {
        homepage = "https://www.dualsub.xyz/en/";
        description = "Display dual subtitles, use machine translation and speech recognition to generate subtitles.";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "storage"
          "https://www.youtube.com/*"
          "https://www.netflix.com/*"
          "https://www.disneyplus.com/*"
          "https://www.ardmediathek.de/*"
          "https://www.bilibili.com/*"
          "https://www.coursera.org/*"
          "https://www.iflix.com/*"
          "https://www.iq.com/*"
          "https://www.primevideo.com/*"
          "https://www.udemy.com/*"
          "https://www.viki.com/*"
          "https://www.youku.tv/*"
          "https://www.zdf.de/*"
          "https://m.youtube.com/*"
          "https://wetv.vip/*"
          "https://player.dualsub.xyz/*"
        ];
        platforms = platforms.all;
      };
    };
    "duckduckgo-privacy-essentials" = buildFirefoxXpiAddon {
      pname = "duckduckgo-privacy-essentials";
      version = "2024.7.24";
      addonId = "jid1-ZAdIEUB7XOzOJw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4325805/duckduckgo_for_firefox-2024.7.24.xpi";
      sha256 = "e1a71dff13da64d25341c18184da301b0f248434764563f90ad3de040da46b57";
      meta = with lib;
      {
        homepage = "https://duckduckgo.com/app";
        description = "Simple and seamless privacy protection for your browser: tracker blocking, cookie protection, DuckDuckGo private search, email protection, HTTPS upgrading, and much more.";
        license = licenses.asl20;
        mozPermissions = [
          "contextMenus"
          "webRequest"
          "webRequestBlocking"
          "*://*/*"
          "webNavigation"
          "activeTab"
          "tabs"
          "storage"
          "<all_urls>"
          "alarms"
        ];
        platforms = platforms.all;
      };
    };
    "earth-view-from-google" = buildFirefoxXpiAddon {
      pname = "earth-view-from-google";
      version = "2.18.8resigned1";
      addonId = "{44ec79ad-72a9-471d-962d-49e7e5501d97}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272651/earth_view_from_google-2.18.8resigned1.xpi";
      sha256 = "5af6c059c80a0f61405c1cb75987bbb0c3f8f7a79d29ebebdaf9ab478fcc722c";
      meta = with lib;
      {
        homepage = "https://earthview.withgoogle.com/";
        description = "Experience a beautiful image from Google Earth every time you open a new tab.";
        license = licenses.asl20;
        mozPermissions = [ "https://www.gstatic.com/prettyearth/*" ];
        platforms = platforms.all;
      };
    };
    "ebates" = buildFirefoxXpiAddon {
      pname = "ebates";
      version = "5.48.0";
      addonId = "{35d6291e-1d4b-f9b4-c52f-77e6410d1326}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4332562/ebates-5.48.0.xpi";
      sha256 = "f3fb98fe4ff55ff3f392d4794617410c1d8a1e2074868ec17ae01738a7ed75b5";
      meta = with lib;
      {
        homepage = "https://www.rakuten.com";
        description = "Start shopping smarter with Cash Back and coupons. By clicking Add to Firefox you agree to the Rakuten Extension <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/8b9325bcbde33c23c7bcf3d7e6409074294d4d283d8d2465beb954789b8adbd9/https%3A//www.rakuten.com/help/article/rakuten-cash-back-button-privacy-notice-360052819794\" rel=\"nofollow\">Terms &amp; Conditions</a>";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "webNavigation"
          "webRequest"
          "storage"
          "cookies"
          "alarms"
          "scripting"
          "<all_urls>"
          "https://*.rakuten.com/*"
          "https://*.rakuten.co.uk/*"
        ];
        platforms = platforms.all;
      };
    };
    "ebates-express-cash-back" = buildFirefoxXpiAddon {
      pname = "ebates-express-cash-back";
      version = "7.8.1";
      addonId = "ebatesca@ebates.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3952935/ebates_express_cash_back-7.8.1.xpi";
      sha256 = "7d0b79886ea02e3b97ae3734978f300e514c11e94946a5681ab7a9d98147d713";
      meta = with lib;
      {
        homepage = "https://www.rakuten.ca/";
        description = "Always forgetting Cash Back?\nLet us help. Shop like you normally would at your favourite stores and we’ll alert you when Cash Back is available. Trust us, you’ll never forget Cash Back again!";
        license = licenses.mpl11;
        mozPermissions = [
          "cookies"
          "tabs"
          "webNavigation"
          "webRequest"
          "storage"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "ecosia" = buildFirefoxXpiAddon {
      pname = "ecosia";
      version = "4.1.3";
      addonId = "{d04b0b40-3dab-4f0b-97a6-04ec3eddbfb0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4324382/ecosia_the_green_search-4.1.3.xpi";
      sha256 = "40fa7e3ac98ae37725c57286fa1fd753fd564e44108a99f9375310590eec567d";
      meta = with lib;
      {
        homepage = "http://www.ecosia.org";
        description = "This extension adds <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/c7a1fe7e1838aaf8fcdb3e88c6700a42c275a31c5fdea179157c9751846df4bf/http%3A//Ecosia.org\" rel=\"nofollow\">Ecosia.org</a> as the default search engine to your browser — it’s completely free!";
        license = licenses.mpl20;
        mozPermissions = [ "*://*.ecosia.org/*" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "edit-with-emacs" = buildFirefoxXpiAddon {
      pname = "edit-with-emacs";
      version = "1.16";
      addonId = "{8dd384e7-fc9e-4b6a-a744-497edc3408c3}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3708541/edit_with_emacs1-1.16.xpi";
      sha256 = "f670a66c37e139f3d40fe963b0e9d77d4f84ac92e02f1f97434480a23cb85b94";
      meta = with lib;
      {
        homepage = "https://github.com/stsquad/emacs_chrome";
        description = "Allow user to edit web-page textareas with Emacs (and other editors).";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "contextMenus"
          "notifications"
          "http://penguin.linux.test/edit/*"
          "http://127.0.0.1/edit/*"
          "clipboardRead"
          "http://*/*"
          "https://*/*"
          "file://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "elasticvue" = buildFirefoxXpiAddon {
      pname = "elasticvue";
      version = "1.0.10";
      addonId = "{2879bc11-6e9e-4d73-82c9-1ed8b78df296}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4324802/elasticvue-1.0.10.xpi";
      sha256 = "dfa972b1efe494e3c1d4f93fa9b57abf2243b927427e3ac377074e5121b0dc9c";
      meta = with lib;
      {
        homepage = "https://elasticvue.com/";
        description = "Elasticvue is a free and simple elasticsearch gui for your browser";
        license = licenses.mit;
        mozPermissions = [ "http://*/*" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "enhanced-github" = buildFirefoxXpiAddon {
      pname = "enhanced-github";
      version = "6.1.0";
      addonId = "{72bd91c9-3dc5-40a8-9b10-dec633c0873f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4297236/enhanced_github-6.1.0.xpi";
      sha256 = "8ebf2ff7602e1747f3cc329e7c99acf7348d019ec456e5639d9d90af0b7afec3";
      meta = with lib;
      {
        homepage = "https://github.com/softvar/enhanced-github";
        description = "Display repo size, size of each file, download link and option to copy file contents";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "webRequest"
          "webNavigation"
          "*://*.github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "enhanced-h264ify" = buildFirefoxXpiAddon {
      pname = "enhanced-h264ify";
      version = "2.2.1";
      addonId = "{9a41dee2-b924-4161-a971-7fb35c053a4a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4295701/enhanced_h264ify-2.2.1.xpi";
      sha256 = "68bf0cd6b2c26de24f263eb76848886665423b73c3f055633dcdbde51d2a35a9";
      meta = with lib;
      {
        homepage = "https://github.com/alextrv/enhanced-h264ify";
        description = "Choose what video codec YouTube should play for you";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://*.youtube.com/*"
          "*://*.youtube-nocookie.com/*"
          "*://*.youtu.be/*"
        ];
        platforms = platforms.all;
      };
    };
    "enhancer-for-youtube" = buildFirefoxXpiAddon {
      pname = "enhancer-for-youtube";
      version = "2.0.126";
      addonId = "enhancerforyoutube@maximerf.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4325319/enhancer_for_youtube-2.0.126.xpi";
      sha256 = "56b497d46f075abcd74d2ede59ab9728e6fa14826a85d5ad9daaa2b653dd3138";
      meta = with lib;
      {
        homepage = "https://www.mrfdev.com/enhancer-for-youtube";
        description = "Take control of YouTube and boost your user experience!";
        license = {
          shortName = "enhancer-for-youtube";
          fullName = "Custom License for Enhancer for YouTube™";
          url = "https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/license/";
          free = false;
        };
        mozPermissions = [
          "cookies"
          "storage"
          "*://www.youtube.com/*"
          "*://www.youtube.com/embed/*"
          "*://www.youtube.com/live_chat*"
          "*://www.youtube.com/pop-up-player/*"
          "*://www.youtube.com/shorts/*"
        ];
        platforms = platforms.all;
      };
    };
    "export-cookies-txt" = buildFirefoxXpiAddon {
      pname = "export-cookies-txt";
      version = "0.3.2";
      addonId = "{36bdf805-c6f2-4f41-94d2-9b646342c1dc}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3403419/export_cookies_txt-0.3.2.xpi";
      sha256 = "8bb7d83fc0185c8e789ff1c81d8905cf0bba69294cebec861cca7b45abf1d2b7";
      meta = with lib;
      {
        homepage = "https://github.com/rotemdan/ExportCookies";
        description = "Export cookies to a Netscape format cookies.txt file.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "cookies"
          "downloads"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "export-tabs-urls-and-titles" = buildFirefoxXpiAddon {
      pname = "export-tabs-urls-and-titles";
      version = "0.2.12";
      addonId = "{17165bd9-9b71-4323-99a5-3d4ce49f3d75}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3398882/export_tabs_urls_and_titles-0.2.12.xpi";
      sha256 = "ff71ff6e300bf00e02ba79e127073f918aec79f951b749b2f06add006e773ac9";
      meta = with lib;
      {
        homepage = "https://github.com/alct/export-tabs-urls";
        description = "List the URLs of all the open tabs and copy that list to clipboard or export it to a file.\n\nFeatures:\n- include titles\n- custom format (e.g. markdown, html…)\n- filter tabs\n- limit to current window\n- list non-HTTP(s) URLs\n- ignore pinned tabs";
        license = licenses.gpl3;
        mozPermissions = [ "clipboardWrite" "notifications" "storage" "tabs" ];
        platforms = platforms.all;
      };
    };
    "facebook-container" = buildFirefoxXpiAddon {
      pname = "facebook-container";
      version = "2.3.11";
      addonId = "@contain-facebook";
      url = "https://addons.mozilla.org/firefox/downloads/file/4141092/facebook_container-2.3.11.xpi";
      sha256 = "90dd562ffe0e6637791456558eabe083b0253e2b8a5df28f0ed0fdf1b7b175d0";
      meta = with lib;
      {
        homepage = "https://github.com/mozilla/contain-facebook";
        description = "Prevent Facebook from tracking you around the web. The Facebook Container extension for Firefox helps you take control and isolate your web activity from Facebook.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "browsingData"
          "contextualIdentities"
          "cookies"
          "management"
          "storage"
          "tabs"
          "webRequestBlocking"
          "webRequest"
        ];
        platforms = platforms.all;
      };
    };
    "fakespot-fake-reviews-amazon" = buildFirefoxXpiAddon {
      pname = "fakespot-fake-reviews-amazon";
      version = "1.3.5";
      addonId = "{44df5123-f715-9146-bfaa-c6e8d4461d44}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340990/fakespot_fake_reviews_amazon-1.3.5.xpi";
      sha256 = "b4243338447d29ec82295d7af78cf6b9dac5c5973fdb7692e8569a6af4e11108";
      meta = with lib;
      {
        description = "Protect yourself from bad sellers and fake reviews on Amazon and more!";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "identity"
          "unlimitedStorage"
          "http://*/*"
          "https://*/*"
          "activeTab"
          "tabs"
          "storage"
          "cookies"
          "*://*.fakespot.com/*"
          "*://*.fakespot.local/*"
          "*://*.amazon.com.au/*"
          "*://*.amazon.co.uk/*"
          "*://*.amazon.ca/*"
          "*://*.amazon.us/*"
          "*://*.amazon.com/*"
          "*://*.amazon.in/*"
          "*://*.amazon.de/*"
          "*://*.amazon.fr/*"
          "*://*.amazon.it/*"
          "*://*.amazon.es/*"
          "*://*.amazon.co.jp/*"
          "*://*.ebay.com/*"
          "*://*.ebay.co.uk/*"
          "*://*.ebay.com.au/*"
          "*://*.ebay.us/*"
          "*://*.ebay.ca/*"
          "*://*.walmart.com/*"
          "*://*.google.com/search*"
          "*://*.bestbuy.com/*"
          "*://*.sephora.com/*"
          "*://*.flipkart.com/*"
          "*://*.flipkart.in/*"
          "*://*.homedepot.com/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "fastforwardteam" = buildFirefoxXpiAddon {
      pname = "fastforwardteam";
      version = "0.2383";
      addonId = "addon@fastforward.team";
      url = "https://addons.mozilla.org/firefox/downloads/file/4258067/fastforwardteam-0.2383.xpi";
      sha256 = "eec6328df3df1afe2cb6a331f6907669d804235551ea766d48655f8f831caf28";
      meta = with lib;
      {
        homepage = "https://fastforward.team";
        description = "Don't waste time with compliance. Use FastForward to skip annoying URL \"shorteners\".";
        license = licenses.unlicense;
        mozPermissions = [
          "alarms"
          "storage"
          "webNavigation"
          "tabs"
          "declarativeNetRequestWithHostAccess"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "faststream" = buildFirefoxXpiAddon {
      pname = "faststream";
      version = "1.3.21";
      addonId = "faststream@andrews";
      url = "https://addons.mozilla.org/firefox/downloads/file/4338775/faststream-1.3.21.xpi";
      sha256 = "07fe5ce66787f617933fa99db2da4853ca7e7063f4b416748bf92cf2260250b6";
      meta = with lib;
      {
        homepage = "https://faststream.online/";
        description = "Stream videos without buffering in the browser. An extension that replaces bad video players on the internet with a better, accessible video player designed for your convenience.";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "storage"
          "tabs"
          "webRequest"
          "declarativeNetRequest"
          "https://www.bilibili.com/*"
          "https://www.bilibili.tv/*"
          "https://www.facebook.com/*"
          "https://www.instagram.com/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "fediact" = buildFirefoxXpiAddon {
      pname = "fediact";
      version = "0.9.8.7";
      addonId = "{cca112bb-1ca6-4593-a2f1-38d808a19dda}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4049927/fediact-0.9.8.7.xpi";
      sha256 = "c0b0891d049a3ad9b8c7716c7f2b20d27d4082030bf806dd773561e51acfb387";
      meta = with lib;
      {
        homepage = "https://github.com/Lartsch/FediAct";
        description = "Simplifies interactions on other Mastodon instances than your own. Visit <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/789a581b17c520493af8e5da2391e5958c7c2b17da669e418888a11bbb423d5a/https%3A//github.com/lartsch/FediAct\" rel=\"nofollow\">https://github.com/lartsch/FediAct</a> for more.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "alarms"
          "tabs"
          "https://*/*"
          "http://*/*"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "ff2mpv" = buildFirefoxXpiAddon {
      pname = "ff2mpv";
      version = "5.1.1";
      addonId = "ff2mpv@yossarian.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4237837/ff2mpv-5.1.1.xpi";
      sha256 = "0e3fa6850f600adba8ed477f91dd1ec4988e338c8746624e9113b861303fdf41";
      meta = with lib;
      {
        homepage = "https://github.com/woodruffw/ff2mpv";
        description = "Tries to play links in mpv.\n\nPress the toolbar button to play the current URL in mpv. Otherwise, right click on a URL and use the context  item to play an arbitrary URL.\n\nYou'll need the native client here: <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/aadcd34348f892e0805a94f141a1124d9c4aa75199eb4cb7c4ff530417617f77/http%3A//github.com/woodruffw/ff2mpv\">github.com/woodruffw/ff2mpv</a>";
        license = licenses.mit;
        mozPermissions = [
          "nativeMessaging"
          "contextMenus"
          "activeTab"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "ficlab" = buildFirefoxXpiAddon {
      pname = "ficlab";
      version = "1.0.109";
      addonId = "ficlab-helper@mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4316565/ficlab-1.0.109.xpi";
      sha256 = "dd9d1d6b392b69b3b95750c55626e93a3013d902e5fa17c312bf699ba983e92a";
      meta = with lib;
      {
        homepage = "https://www.ficlab.com/";
        description = "Download fanfiction as ebook files from a number of popular sites. Simple to use, with beautiful results.";
        license = {
          shortName = "ficlab";
          fullName = "Custom License for FicLab";
          url = "https://addons.mozilla.org/en-US/firefox/addon/ficlab/license/";
          free = false;
        };
        mozPermissions = [
          "downloads"
          "storage"
          "<all_urls>"
          "https://*.fanfiction.net/*"
          "https://*.fictionpress.com/*"
          "https://www.fimfiction.net/*"
          "https://literotica.com/*"
          "https://*.literotica.com/*"
          "https://archiveofourown.org/*"
          "https://www.archiveofourown.org/*"
          "https://starslibrary.net/*"
          "https://www.starslibrary.net/*"
          "https://www.asianfanfics.com/*"
          "https://www.inkitt.com/*"
          "https://getinkspired.com/*"
          "https://www.getinkspired.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "firefox-color" = buildFirefoxXpiAddon {
      pname = "firefox-color";
      version = "2.1.7";
      addonId = "FirefoxColor@mozilla.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3643624/firefox_color-2.1.7.xpi";
      sha256 = "b7fb07b6788f7233dd6223e780e189b4c7b956c25c40493c28d7020493249292";
      meta = with lib;
      {
        homepage = "https://color.firefox.com";
        description = "Build, save and share beautiful Firefox themes.";
        license = licenses.mpl20;
        mozPermissions = [
          "theme"
          "storage"
          "tabs"
          "https://color.firefox.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "firefox-translations" = buildFirefoxXpiAddon {
      pname = "firefox-translations";
      version = "1.3.4buildid20230720.091143";
      addonId = "firefox-translations-addon@mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4141509/firefox_translations-1.3.4buildid20230720.091143.xpi";
      sha256 = "d2ad4d71079754aec1fab2a03294a5ab5992bd377c57561cfa331e61b5c440e3";
      meta = with lib;
      {
        homepage = "https://blog.mozilla.org/en/mozilla/local-translation-add-on-project-bergamot/";
        description = "Translate websites in your browser, privately, without using the cloud. The functionality from this extension is now integrated into Firefox.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "tabs"
          "webNavigation"
          "storage"
          "mozillaAddons"
          "contextMenus"
        ];
        platforms = platforms.all;
      };
    };
    "firemonkey" = buildFirefoxXpiAddon {
      pname = "firemonkey";
      version = "2.72";
      addonId = "firemonkey@eros.man";
      url = "https://addons.mozilla.org/firefox/downloads/file/4140283/firemonkey-2.72.xpi";
      sha256 = "2ec4526552639efb2488c3460e8202f50a1616ba68598768dd85a7ea3dbd4a5b";
      meta = with lib;
      {
        homepage = "https://github.com/erosman/support/issues";
        description = "Super Lightweight User Script and Style Manager";
        license = licenses.mpl20;
        mozPermissions = [
          "clipboardWrite"
          "cookies"
          "downloads"
          "idle"
          "menus"
          "notifications"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "firenvim" = buildFirefoxXpiAddon {
      pname = "firenvim";
      version = "0.2.16";
      addonId = "firenvim@lacamb.re";
      url = "https://addons.mozilla.org/firefox/downloads/file/4279173/firenvim-0.2.16.xpi";
      sha256 = "080b45e4863c5905431d5712ee563737387b32e787e8c2054270e3d672f08848";
      meta = with lib;
      {
        description = "Turn Firefox into a Neovim client.";
        license = licenses.gpl3;
        mozPermissions = [ "nativeMessaging" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "flagfox" = buildFirefoxXpiAddon {
      pname = "flagfox";
      version = "6.1.77";
      addonId = "{1018e4d6-728f-4b20-ad56-37578a4de76b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328442/flagfox-6.1.77.xpi";
      sha256 = "7b3b77a688b153d114f631c2749f1c1bf7ae4c69be82804d1a1afa29194d4f7c";
      meta = with lib;
      {
        homepage = "https://flagfox.wordpress.com/";
        description = "Displays a country flag depicting the location of the current website's server and provides a multitude of tools such as site safety checks, whois, translation, similar sites, validation, URL shortening, and more...";
        license = {
          shortName = "flagfox";
          fullName = "Flagfox License";
          url = "https://addons.mozilla.org/en-US/firefox/addon/flagfox/license/";
          free = false;
        };
        mozPermissions = [
          "storage"
          "clipboardRead"
          "clipboardWrite"
          "menus"
          "contextMenus"
          "notifications"
          "tabs"
          "webRequest"
          "dns"
          "cookies"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "floccus" = buildFirefoxXpiAddon {
      pname = "floccus";
      version = "5.2.5";
      addonId = "floccus@handmadeideas.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4325872/floccus-5.2.5.xpi";
      sha256 = "420ae1ce34eff46cb50e46758f62ca6ad42a51c259bea9c176f55e7aa4cce797";
      meta = with lib;
      {
        homepage = "https://floccus.org";
        description = "Sync your bookmarks and tabs across browsers via Nextcloud, any WebDAV service, any Git service, via a local file, via Google Drive.";
        license = licenses.mpl20;
        mozPermissions = [
          "*://*/*"
          "alarms"
          "bookmarks"
          "storage"
          "unlimitedStorage"
          "tabs"
          "identity"
        ];
        platforms = platforms.all;
      };
    };
    "forget_me_not" = buildFirefoxXpiAddon {
      pname = "forget_me_not";
      version = "2.2.8";
      addonId = "forget-me-not@lusito.info";
      url = "https://addons.mozilla.org/firefox/downloads/file/3577046/forget_me_not-2.2.8.xpi";
      sha256 = "0784456f4f992c143b7897ea7879ce6324d9cce295c29a848e7ed55d9c762be3";
      meta = with lib;
      {
        homepage = "https://github.com/Lusito/forget-me-not/";
        description = "Make the browser forget website data (like cookies, local storage, etc.), except for the data you want to keep by adding domains to a whitelist, graylist, blacklist, or redlist.";
        license = licenses.zlib;
        mozPermissions = [
          "storage"
          "tabs"
          "browsingData"
          "cookies"
          "downloads"
          "history"
          "notifications"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextualIdentities"
          "<all_urls>"
          "https://lusito.github.io/web-ext-translator/*"
        ];
        platforms = platforms.all;
      };
    };
    "form-history-control" = buildFirefoxXpiAddon {
      pname = "form-history-control";
      version = "2.5.8.0";
      addonId = "formhistory@yahoo.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4186388/form_history_control-2.5.8.0.xpi";
      sha256 = "2b15b8468c1e9507c5fcb84ab03ad6b1c174682bd464730e1aa5e9dbd593c5ce";
      meta = with lib;
      {
        homepage = "https://stephanmahieu.github.io/fhc-home/";
        description = "Manage form history entries (search, edit, cleanup, export/import) and easy text formfiller.\n\nAuto-save text entered in any form while typing to allow fast recovery when disaster strikes.";
        license = licenses.mit;
        mozPermissions = [
          "menus"
          "activeTab"
          "tabs"
          "storage"
          "alarms"
          "clipboardWrite"
          "*://*/*"
          "file:///*"
        ];
        platforms = platforms.all;
      };
    };
    "foxyproxy-standard" = buildFirefoxXpiAddon {
      pname = "foxyproxy-standard";
      version = "8.9";
      addonId = "foxyproxy@eric.h.jung";
      url = "https://addons.mozilla.org/firefox/downloads/file/4228676/foxyproxy_standard-8.9.xpi";
      sha256 = "b1e1b85f4b3b047560f5329040e14a2fec9699edd4706391f6f2318b203ab023";
      meta = with lib;
      {
        homepage = "https://getfoxyproxy.org";
        description = "FoxyProxy is an open-source, advanced proxy management tool that completely replaces Firefox's limited proxying capabilities. No paid accounts are necessary; bring your own proxies or buy from any vendor. The original proxy tool, since 2006.";
        license = licenses.gpl2;
        mozPermissions = [
          "downloads"
          "notifications"
          "proxy"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "foxytab" = buildFirefoxXpiAddon {
      pname = "foxytab";
      version = "2.31";
      addonId = "foxytab@eros.man";
      url = "https://addons.mozilla.org/firefox/downloads/file/4066782/foxytab-2.31.xpi";
      sha256 = "5d8e5499bf4ccb6571d00a9ea885445fcb532c5dd090d5c57621d69098a4c77a";
      meta = with lib;
      {
        homepage = "https://github.com/erosman/support";
        description = "Collection of Tab Related Actions e.g. Duplicate, Close Duplicates, Close to the Left, Copy Title, Merge Windows, Save as PDF, Copy Urls Tab/All/Left/Right, Host keep/close/close other, Sort by URL/Title, Asce/Desc, Move, Reload, Reload Timer";
        license = licenses.mpl20;
        mozPermissions = [
          "bookmarks"
          "clipboardWrite"
          "contextualIdentities"
          "cookies"
          "downloads"
          "menus"
          "notifications"
          "storage"
          "tabs"
          "tabHide"
          "theme"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "fraidycat" = buildFirefoxXpiAddon {
      pname = "fraidycat";
      version = "1.1.10";
      addonId = "{94060031-effe-4b93-89b4-9cd570217a8d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3783967/fraidycat-1.1.10.xpi";
      sha256 = "2bf975fef065290e19d5e70722021fc65e8499bececbdd56c616462d5bf834f1";
      meta = with lib;
      {
        homepage = "https://fraidyc.at/";
        description = "Follow from afar. Follow blogs, wikis, Twitter, Instagram, Tumblr - anyone on nearly any blog-like network - from your browser. No notifications, no unread messages, no 'inbox'. Just a single page overview of all your follows.";
        license = licenses.mit;
        mozPermissions = [
          "http://*/"
          "https://*/"
          "https://m.facebook.com/*"
          "https://*.fbcdn.net/*"
          "https://www.instagram.com/*"
          "https://www.reddit.com/*"
          "https://pbs.twimg.com/*"
          "https://twitter.com/*"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "https://fraidyc.at/s/*"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "frame-extension" = buildFirefoxXpiAddon {
      pname = "frame-extension";
      version = "0.12.1";
      addonId = "{77691beb-4c53-48de-ab20-6589a537717a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340672/frame_extension-0.12.1.xpi";
      sha256 = "8cf0529ccd4add0a412cc3b0b5fd22f1d5a0cbc871642254a31458ed93c2488b";
      meta = with lib;
      {
        homepage = "https://github.com/floating/frame";
        description = "This extension connects web apps to Frame. Frame is an Ethereum wallet that runs as a native desktop application. It manages all of your accounts, tokens and items and allows to seamlessly and securely connect them any app.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "alarms"
          "idle"
          "scripting"
          "file://*/*"
          "http://*/*"
          "https://*/*"
          "http://twitter.com/*"
          "https://twitter.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "freedom-website-blocker" = buildFirefoxXpiAddon {
      pname = "freedom-website-blocker";
      version = "17.0.12";
      addonId = "{37cf1a46-0300-4893-a483-248807035bbf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3765143/freedom_website_blocker-17.0.12.xpi";
      sha256 = "658e6b08d76e57fff7093ab50b692eacafd73e3c93d86e950b6aca6f8db8c76f";
      meta = with lib;
      {
        homepage = "https://freedom.to/";
        description = "The Freedom website blocker gives you control over distracting websites, so you can focus on what matters most.";
        license = {
          shortName = "freedom.to";
          fullName = "freedom.to Terms of Service";
          url = "https://freedom.to/terms";
          free = false;
        };
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "*://*/*"
          "storage"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "french-dictionary" = buildFirefoxXpiAddon {
      pname = "french-dictionary";
      version = "7.0b";
      addonId = "fr-dicollecte@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3581786/dictionnaire_francais1-7.0b.xpi";
      sha256 = "e0e90b88b177dc1b268b019c8672eb1be943f12e174ad474dbdc46f0e6fbaa6f";
      meta = with lib;
      {
        homepage = "https://grammalecte.net";
        description = "Spelling dictionary for the French language.";
        license = licenses.mpl20;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "french-language-pack" = buildFirefoxXpiAddon {
      pname = "french-language-pack";
      version = "130.0.20240821.91813";
      addonId = "langpack-fr@firefox.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340388/francais_language_pack-130.0.20240821.91813.xpi";
      sha256 = "3e2911cac8bdda6006f7107195058ce59a66ad7d47467cd38879a9b8e571ecd3";
      meta = with lib;
      {
        description = "Firefox Language Pack for Français (fr) – French";
        license = licenses.mpl20;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "furiganaize" = buildFirefoxXpiAddon {
      pname = "furiganaize";
      version = "0.7.2";
      addonId = "{a2503cd4-4083-4c2f-bef2-37767a569867}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4032306/furiganaize-0.7.2.xpi";
      sha256 = "7545bc418f2afbc576b0e762f2b2fa0545d5d94f3f80737e5356d087a5951c0b";
      meta = with lib;
      {
        homepage = "https://github.com/kuanyui/Furiganaize";
        description = "Auto insert furigana (振り仮名) on Japanese kanji.";
        license = licenses.mit;
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "<all_urls>"
          "activeTab"
          "tabs"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "geminize" = buildFirefoxXpiAddon {
      pname = "geminize";
      version = "1.0.4";
      addonId = "{c72d8561-58ba-4250-b5b2-13cfea0b6c4e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3708150/geminize-1.0.4.xpi";
      sha256 = "2a65389bde2db1333a8341b147a9919daf1356876771195d7c20f61e75ebc139";
      meta = with lib;
      {
        homepage = "https://gitlab.com/nocylah/geminize";
        description = "Explore Project Gemini sites from Firefox!";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "webNavigation" ];
        platforms = platforms.all;
      };
    };
    "gesturefy" = buildFirefoxXpiAddon {
      pname = "gesturefy";
      version = "3.2.13";
      addonId = "{506e023c-7f2b-40a3-8066-bc5deb40aebe}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4330901/gesturefy-3.2.13.xpi";
      sha256 = "f0908a53854e07fc436d053ea5528d180e7425fd3084ca0921cc558fce1a208b";
      meta = with lib;
      {
        homepage = "https://github.com/Robbendebiene/Gesturefy";
        description = "Navigate, operate, and browse faster with mouse gestures! A customizable mouse gesture add-on with a variety of different commands.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "notifications"
          "browserSettings"
        ];
        platforms = platforms.all;
      };
    };
    "ghostery" = buildFirefoxXpiAddon {
      pname = "ghostery";
      version = "10.4.1";
      addonId = "firefox@ghostery.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336273/ghostery-10.4.1.xpi";
      sha256 = "0b46d8e0e027dcb66f47745e519f76f2192622b5c028b0e4870cd445f2751cff";
      meta = with lib;
      {
        homepage = "http://www.ghostery.com/";
        description = "The best privacy tool and ad blocker extension for Firefox. Stop trackers, speed up websites and block ads everywhere including YouTube and Facebook.";
        license = licenses.mpl20;
        mozPermissions = [
          "alarms"
          "cookies"
          "storage"
          "scripting"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
          "ws://*/*"
          "wss://*/*"
          "*://www.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "ghosttext" = buildFirefoxXpiAddon {
      pname = "ghosttext";
      version = "24.8.10";
      addonId = "ghosttext@bfred.it";
      url = "https://addons.mozilla.org/firefox/downloads/file/4334686/ghosttext-24.8.10.xpi";
      sha256 = "86bfd2d31bf60c88e4ae72dbc1636977e88ce5603d01cf87b981db5b5bb98e21";
      meta = with lib;
      {
        homepage = "https://github.com/fregante/GhostText";
        description = "Use your text editor to write in your browser. Everything you type in the editor will be instantly updated in the browser (and vice versa).";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "contextMenus"
          "scripting"
          "storage"
          "http://localhost:4001/*"
        ];
        platforms = platforms.all;
      };
    };
    "gitako-github-file-tree" = buildFirefoxXpiAddon {
      pname = "gitako-github-file-tree";
      version = "3.12.1";
      addonId = "{983bd86b-9d6f-4394-92b8-63d844c4ce4c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4315380/gitako_github_file_tree-3.12.1.xpi";
      sha256 = "68bb06929b08d9c3aff55fdff411b4dc2f57e1752af358b018ab5003fbfeef69";
      meta = with lib;
      {
        homepage = "https://github.com/EnixCoda/Gitako";
        description = "Gitako is a file tree extension for GitHub, available on Firefox, Chrome, and Edge.\n\nVideo intro: <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/1c1a0c23e84b9c3e43af4c047563692e835dfa55acf38822fa3ca2bd4cb9ad0e/https%3A//youtu.be/r4Ein-s2pN0\" rel=\"nofollow\">https://youtu.be/r4Ein-s2pN0</a>\nHomepage: <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/414db85f00575463826dd366beac0a912bf5a9dc43e679f39ddb998d218d376c/https%3A//github.com/EnixCoda/Gitako\" rel=\"nofollow\">https://github.com/EnixCoda/Gitako</a>";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "contextMenus"
          "activeTab"
          "*://*.github.com/*"
          "*://gitako.enix.one/*"
          "*://*.sentry.io/*"
          "https://github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "github-file-icons" = buildFirefoxXpiAddon {
      pname = "github-file-icons";
      version = "1.5.2";
      addonId = "{85860b32-02a8-431a-b2b1-40fbd64c9c69}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4238111/github_file_icons-1.5.2.xpi";
      sha256 = "b7ad067981605e5396439bcc356a759c7cc7872a65ef6ad5eb4b6243239920b3";
      meta = with lib;
      {
        homepage = "https://github.com/xxhomey19/github-file-icon";
        description = "A Firefox Add-On which gives different filetypes different icons to GitHub, Gitlab, Bitbucket, gitea and gogs.";
        license = licenses.mit;
        mozPermissions = [
          "contextMenus"
          "storage"
          "activeTab"
          "https://github.com/*"
          "https://gitlab.com/*"
          "https://*.gogs.io/*"
          "https://*.gitea.io/*"
        ];
        platforms = platforms.all;
      };
    };
    "github-isometric-contributions" = buildFirefoxXpiAddon {
      pname = "github-isometric-contributions";
      version = "1.1.31";
      addonId = "isometric-contributions@jasonlong.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326182/github_isometric_contributions-1.1.31.xpi";
      sha256 = "bb55818eb558344debfbd0c19ae7ae287ba4d6fa3d119904fe088220c3661be8";
      meta = with lib;
      {
        description = "Renders an isometric pixel view of GitHub contribution graphs.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "contextMenus"
          "activeTab"
          "https://github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "gitpod" = buildFirefoxXpiAddon {
      pname = "gitpod";
      version = "2.2.2";
      addonId = "{dbcc42f9-c979-4f53-8a95-a102fbff3bbe}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4307315/gitpod-2.2.2.xpi";
      sha256 = "74e1edf69e55e38946cbdb11e664745fc0f7a7b1ddd5be13705727806b1b62b9";
      meta = with lib;
      {
        homepage = "http://www.gitpod.io";
        description = "Gitpod streamlines developer workflows by providing ready-to-code development environments in your browser - powered by VS Code.";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "storage"
          "scripting"
          "contextMenus"
          "activeTab"
          "https://gitpod.io/*"
          "https://*.gitpod.cloud/*"
          "https://github.com/*"
          "https://gitlab.com/*"
          "https://bitbucket.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "gloc" = buildFirefoxXpiAddon {
      pname = "gloc";
      version = "8.2.67";
      addonId = "{bc2166c4-e7a2-46d5-ad9e-342cef57f1f7}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4066555/gloc-8.2.67.xpi";
      sha256 = "8be408c7afc05ea67935e854b0128cb1505106ff9fc487adf1040389b38fce11";
      meta = with lib;
      {
        homepage = "https://github.com/kas-elvirov/gloc";
        description = "Сounts lines of code on GitHub\nWorks for public and private repositories.\nCounts lines of code from:\n- project detail page,\n- user's repositories,\n- organization page,\n- search results page, \n- trending page.";
        license = licenses.gpl2;
        mozPermissions = [ "storage" "*://*.github.com/*" "*://github.com/*" ];
        platforms = platforms.all;
      };
    };
    "gnome-shell-integration" = buildFirefoxXpiAddon {
      pname = "gnome-shell-integration";
      version = "12";
      addonId = "chrome-gnome-shell@gnome.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4300298/gnome_shell_integration-12.xpi";
      sha256 = "4c30f53dc1a29ae624e37c433f84df9d1ce64e6f4d996567f580fc88ee535e2c";
      meta = with lib;
      {
        homepage = "https://gnome.pages.gitlab.gnome.org/gnome-browser-integration/pages/gnome-browser-integration.html";
        description = "This extension provides integration with GNOME Shell and the corresponding extensions repository <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/b16ff805576d83628b80265636b483e6f56c58d6e812e04045626ff602eff739/https%3A//extensions.gnome.org\" rel=\"nofollow\">https://extensions.gnome.org</a>";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "nativeMessaging"
          "notifications"
          "storage"
          "tabs"
          "https://extensions.gnome.org/*"
          "https://extensions-next.gnome.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "google-cal-event-merge" = buildFirefoxXpiAddon {
      pname = "google-cal-event-merge";
      version = "2.2.1";
      addonId = "{8b4a69b6-0502-45e6-ba61-92c041c46ac3}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3286178/google_cal_event_merge-2.2.1.xpi";
      sha256 = "ab8096ae6e5e822dcabacf74bf9e566e49cc9baf94b37b33e574dfec8086ecd8";
      meta = with lib;
      {
        description = "Chrome extension that visually merges the same event on multiple Google Calendars into one event.\n\nSource: <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/342b7a3d66f39d16cdbc5cd1d4cc26f85aeb1f94cae54867035888d93d484554/https%3A//github.com/imightbeamy/gcal-multical-event-merge\">https://github.com/imightbeamy/gcal-multical-event-merge</a>";
        license = licenses.gpl3;
        mozPermissions = [
          "https://www.google.com/calendar/*"
          "https://calendar.google.com/*"
          "storage"
          "https://calendar.google.com/calendar/*"
        ];
        platforms = platforms.all;
      };
    };
    "gopass-bridge" = buildFirefoxXpiAddon {
      pname = "gopass-bridge";
      version = "0.9.0";
      addonId = "{eec37db0-22ad-4bf1-9068-5ae08df8c7e9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3933988/gopass_bridge-0.9.0.xpi";
      sha256 = "3ef72f32eabc9092591076a2093b3341cb1a9e6c57631655a97c7bcecab80420";
      meta = with lib;
      {
        homepage = "https://github.com/gopasspw/gopassbridge";
        description = "Gopass Bridge allows searching and inserting login credentials from the gopass password manager ( <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fa484fa7cde64c1be04f689a80902fdf34bfe274b8675213f619c3a13e6606ab/https%3A//www.gopass.pw/\">https://www.gopass.pw/</a> ).";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "clipboardWrite"
          "storage"
          "nativeMessaging"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "grammarly" = buildFirefoxXpiAddon {
      pname = "grammarly";
      version = "8.912.0";
      addonId = "87677a2c52b84ad3a151a4a72f5bd3c4@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4262513/grammarly_1-8.912.0.xpi";
      sha256 = "6e380ddffaacda256e153cb928c0c9206c6730398d549e0a91d6fdccc9dd95a0";
      meta = with lib;
      {
        homepage = "http://grammarly.com";
        description = "Improve your writing with Grammarly's assistance. Get spell check, grammar check, and punctuation check in one tool. Real-time suggestions for improving tone and clarity help ensure your writing makes the impression you want.";
        license = {
          shortName = "grammarly";
          fullName = "Grammarly Terms of Service and License Agreement";
          url = "https://www.grammarly.com/terms";
          free = false;
        };
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "tabs"
          "notifications"
          "cookies"
          "storage"
          "<all_urls>"
          "*://*.atlassian.net/*"
          "*://mail.google.com/*"
          "*://*.mail.google.com/*"
          "*://quora.com/*"
          "*://*.quora.com/*"
          "*://*.slack.com/*"
          "*://*.blackboard.com/*"
          "*://*.blogger.com/*"
          "*://publish.buffer.com/*"
          "*://*.publish.buffer.com/*"
          "*://facebook.com/*"
          "*://*.facebook.com/*"
          "*://calendar.google.com/*"
          "*://*.calendar.google.com/*"
          "*://keep.google.com/*"
          "*://*.keep.google.com/*"
          "*://intercom.io/*"
          "*://*.intercom.io/*"
          "*://linkedin.com/*"
          "*://*.linkedin.com/*"
          "*://medium.com/*"
          "*://*.medium.com/*"
          "*://messenger.com/*"
          "*://*.messenger.com/*"
          "*://teams.microsoft.com/*"
          "*://*.teams.microsoft.com/*"
          "*://translate.google.com/*"
          "*://*.translate.google.com/*"
          "*://reddit.com/*"
          "*://*.reddit.com/*"
          "*://youtube.com/*"
          "*://*.youtube.com/*"
          "*://twitter.com/*"
          "*://*.twitter.com/*"
          "*://*.lightning.force.com/*"
          "*://trello.com/*"
          "*://*.trello.com/*"
          "*://upwork.com/*"
          "*://*.upwork.com/*"
          "*://web.whatsapp.com/*"
          "*://*.web.whatsapp.com/*"
          "*://wix.com/*"
          "*://*.wix.com/*"
          "*://wordpress.com/*"
          "*://*.wordpress.com/*"
          "*://*.zendesk.com/*"
          "*://wattpad.com/*"
          "*://*.wattpad.com/*"
          "*://onlinechatdashboard.com/*"
          "*://*.onlinechatdashboard.com/*"
          "*://wordcounter.net/*"
          "*://*.wordcounter.net/*"
          "*://fiverr.com/*"
          "*://*.fiverr.com/*"
          "*://educationperfect.com/*"
          "*://*.educationperfect.com/*"
          "*://apclassroom.collegeboard.org/*"
          "*://*.apclassroom.collegeboard.org/*"
          "*://studio.youtube.com/*"
          "*://*.studio.youtube.com/*"
          "*://chat.google.com/*"
          "*://*.chat.google.com/*"
          "*://twitch.tv/*"
          "*://*.twitch.tv/*"
          "*://papago.naver.com/*"
          "*://*.papago.naver.com/*"
          "*://readworks.org/*"
          "*://*.readworks.org/*"
          "*://app.nearpod.com/*"
          "*://*.app.nearpod.com/*"
          "*://mail.aol.com/*"
          "*://*.mail.aol.com/*"
          "*://github.com/*"
          "*://*.github.com/*"
          "*://coursera.org/*"
          "*://*.coursera.org/*"
          "*://commonlit.org/*"
          "*://*.commonlit.org/*"
          "*://classroom.google.com/*"
          "*://*.classroom.google.com/*"
          "*://app.seesaw.me/*"
          "*://*.app.seesaw.me/*"
          "*://forms.office.com/*"
          "*://*.forms.office.com/*"
          "*://outlook.live.com/*"
          "*://*.outlook.live.com/*"
          "*://outlook.office.com/*"
          "*://*.outlook.office.com/*"
          "*://docs.google.com/document/*"
          "https://*.overleaf.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "granted" = buildFirefoxXpiAddon {
      pname = "granted";
      version = "1.1.2";
      addonId = "{b5e0e8de-ebfe-4306-9528-bcc18241a490}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4086622/granted-1.1.2.xpi";
      sha256 = "f24bcab717460ec99cc0e70efa079fa8a6cf5f5af6c3e6b9532578714fb8f7bc";
      meta = with lib;
      {
        description = "View multiple cloud accounts and regions in a single browser.";
        license = licenses.mit;
        mozPermissions = [ "contextualIdentities" "cookies" "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "greasemonkey" = buildFirefoxXpiAddon {
      pname = "greasemonkey";
      version = "4.13";
      addonId = "{e4a8a97b-f2ed-450b-b12d-ee082ba24781}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4332091/greasemonkey-4.13.xpi";
      sha256 = "31b9e9521eac579114ed20616851f4f984229fbe6d8ebd4dc4799eb48c59578c";
      meta = with lib;
      {
        homepage = "http://www.greasespot.net/";
        description = "Customize the way a web page displays or behaves, by using small bits of JavaScript.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "clipboardWrite"
          "cookies"
          "downloads"
          "notifications"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "gruvbox-dark-theme" = buildFirefoxXpiAddon {
      pname = "gruvbox-dark-theme";
      version = "1.1";
      addonId = "{eb8c4a94-e603-49ef-8e81-73d3c4cc04ff}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3595905/gruvbox_dark_theme-1.1.xpi";
      sha256 = "de417b35a4747f5c51b2b73dd8db9d484953fcd8909f0c7d936ca7fc6f8ca4e2";
      meta = with lib;
      {
        homepage = "https://gitlab.com/calvinchd/gruvbox-dark-firefox-theme";
        description = "Gruvbox dark theme for Firefox. Using <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/51b32595b55bba030aad1f22730eb7a787bb37c8a04d43f4a473d4b094b65ccb/https%3A//github.com/morhetz/gruvbox\" rel=\"nofollow\">https://github.com/morhetz/gruvbox</a> color palette";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "gsconnect" = buildFirefoxXpiAddon {
      pname = "gsconnect";
      version = "8";
      addonId = "gsconnect@andyholmes.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3626312/gsconnect-8.xpi";
      sha256 = "68b2fe0a9e064ccf869af5a9021f4d90661b8b05ca330c39d852a6cc1aa92274";
      meta = with lib;
      {
        homepage = "https://github.com/andyholmes/gnome-shell-extension-gsconnect";
        description = "Share links with GSConnect, direct to the browser or by SMS. Requires at least v7 of the Gnome Shell extension to function.";
        license = licenses.gpl2;
        mozPermissions = [ "nativeMessaging" "tabs" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "h264ify" = buildFirefoxXpiAddon {
      pname = "h264ify";
      version = "1.1.0";
      addonId = "jid1-TSgSxBhncsPBWQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3398929/h264ify-1.1.0.xpi";
      sha256 = "87bd3c4ab1a2359c01a1d854d7db8428b44316fef5b2ac09e228c5318c57a515";
      meta = with lib;
      {
        description = "Makes YouTube stream H.264 videos instead of VP8/VP9 videos";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://*.youtube.com/*"
          "*://*.youtube-nocookie.com/*"
          "*://*.youtu.be/*"
        ];
        platforms = platforms.all;
      };
    };
    "hackontext" = buildFirefoxXpiAddon {
      pname = "hackontext";
      version = "1.3";
      addonId = "{ed26d465-baef-4e1a-b242-6681b024b941}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3952457/hackontext-1.3.xpi";
      sha256 = "336039d14185e052f4bf563086457c7f64eb4794f3e6335330ddb01de954c4f2";
      meta = with lib;
      {
        homepage = "https://github.com/D3vil0per/hackontext";
        description = "HacKontext allows to inject website information, HTTP headers and body parameters of the active browser tab on specific InfoSec command-line tools in order to improve and speed up their correct usage.";
        license = licenses.gpl3;
        mozPermissions = [
          "contextMenus"
          "activeTab"
          "cookies"
          "webRequest"
          "<all_urls>"
          "tabs"
          "clipboardWrite"
        ];
        platforms = platforms.all;
      };
    };
    "hacktools" = buildFirefoxXpiAddon {
      pname = "hacktools";
      version = "0.4.0";
      addonId = "{f1423c11-a4e2-4709-a0f8-6d6a68c83d08}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3901885/hacktools-0.4.0.xpi";
      sha256 = "96cfad19c851e4c3788ebe34eca7a268414c3cf642137133f30a6c3fcbccefe3";
      meta = with lib;
      {
        homepage = "https://github.com/LasCC/Hack-Tools";
        description = "Hacktools, is a web extension facilitating your web application penetration tests, it includes cheat sheets as well as all the tools used during a test such as XSS payloads, Reverse shells to test your web application.";
        license = licenses.lgpl3;
        mozPermissions = [ "devtools" ];
        platforms = platforms.all;
      };
    };
    "header-editor" = buildFirefoxXpiAddon {
      pname = "header-editor";
      version = "4.1.1";
      addonId = "headereditor-amo@addon.firefoxcn.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3472456/header_editor-4.1.1.xpi";
      sha256 = "389fba1a1a08b97f8b4bf0ed9c21ac2e966093ec43cecb80fc574997a0a99766";
      meta = with lib;
      {
        homepage = "https://he.firefoxcn.net/en/";
        description = "Manage browser's requests, include modify the request headers and response headers, redirect requests, cancel requests";
        license = licenses.gpl2;
        mozPermissions = [
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "storage"
          "downloads"
          "*://*/*"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "history-cleaner" = buildFirefoxXpiAddon {
      pname = "history-cleaner";
      version = "1.6.1";
      addonId = "{a138007c-5ff6-4d10-83d9-0afaf0efbe5e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4294373/history_cleaner-1.6.1.xpi";
      sha256 = "81289812592d1b0d0a903b9bc567b2257c56558f3e29cb8a361613014a488f6b";
      meta = with lib;
      {
        homepage = "https://github.com/Rayquaza01/HistoryCleaner";
        description = "Deletes browsing history older than a specified number of days.";
        license = licenses.mit;
        mozPermissions = [
          "history"
          "storage"
          "idle"
          "notifications"
          "alarms"
        ];
        platforms = platforms.all;
      };
    };
    "hls-stream-detector" = buildFirefoxXpiAddon {
      pname = "hls-stream-detector";
      version = "2.11.7";
      addonId = "@m3u8link";
      url = "https://addons.mozilla.org/firefox/downloads/file/4136128/hls_stream_detector-2.11.7.xpi";
      sha256 = "6d7163dc6cd0eb82d951c551cffc2c796023117b071c20eee8e20c4e11155c49";
      meta = with lib;
      {
        description = "This addon provides an easy way to keep track of manifests and subtitles used by various streaming protocols. Also allows for detecting custom file types and downloading media files.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "clipboardWrite"
          "downloads"
          "notifications"
          "storage"
          "tabs"
          "webRequest"
        ];
        platforms = platforms.all;
      };
    };
    "honey" = buildFirefoxXpiAddon {
      pname = "honey";
      version = "12.8.4";
      addonId = "jid1-93CWPmRbVPjRQA@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3731265/honey-12.8.4.xpi";
      sha256 = "1abc41b3d81879e8687696bb084ecceb40edec95ffa5b4516ad86185e13114cb";
      meta = with lib;
      {
        homepage = "https://www.joinhoney.com";
        description = "Automatically find and try coupon codes with 1-click. Works at thousands of stores in the US, Canada, Australia, India and the UK.";
        license = {
          shortName = "honeyl";
          fullName = "Custom License for Honey";
          url = "https://addons.mozilla.org/en-US/firefox/addon/honey/license/";
          free = false;
        };
        mozPermissions = [
          "storage"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "hoppscotch" = buildFirefoxXpiAddon {
      pname = "hoppscotch";
      version = "0.36";
      addonId = "postwoman-firefox@postwoman.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4283657/hoppscotch-0.36.xpi";
      sha256 = "d3b1d4da6bd978c7230cc3b0ca8b9239e2534f08549fa356735001c5807f99ce";
      meta = with lib;
      {
        homepage = "https://github.com/hoppscotch/hoppscotch-extension";
        description = "Provides better experience for using the Hoppscotch web app.\n\nHaven't used Hoppscotch ? It's an amazing quick API Request Builder.\nTry it at <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/b9072bc5e1ee582514460d66641043506a2be371c097d77e1eb00a6b5b9dfa97/https%3A//hoppscotch.io/\" rel=\"nofollow\">https://hoppscotch.io/</a> !!!";
        license = licenses.mit;
        mozPermissions = [ "storage" "tabs" "cookies" "scripting" ];
        platforms = platforms.all;
      };
    };
    "hover-zoom-plus" = buildFirefoxXpiAddon {
      pname = "hover-zoom-plus";
      version = "1.0.218";
      addonId = "{92e6fe1c-6e1d-44e1-8bc6-d309e59406af}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4315249/hover_zoom_plus-1.0.218.xpi";
      sha256 = "d9082a2751e229dc1c9c98533cea27593fb8e922c3261bba0b5d6367376b4e03";
      meta = with lib;
      {
        homepage = "https://github.com/extesy/hoverzoom/";
        description = "Zoom images/videos on all your favorite websites (Facebook, Amazon, etc). Simply hover your mouse over the image to enlarge it.";
        license = licenses.mit;
        mozPermissions = [
          "*://*/*"
          "unlimitedStorage"
          "<all_urls>"
          "*://*.facebook.com/*"
          "*://*.flickr.com/*"
          "*://*.flickr.net/*"
          "*://*.search.yahoo.com/*"
          "*://*.search.yahoo.co.jp/*"
          "*://*.deviantart.com/*"
          "*://*.google.ad/*"
          "*://*.google.ae/*"
          "*://*.google.am/*"
          "*://*.google.as/*"
          "*://*.google.at/*"
          "*://*.google.az/*"
          "*://*.google.ba/*"
          "*://*.google.be/*"
          "*://*.google.bg/*"
          "*://*.google.bi/*"
          "*://*.google.bj/*"
          "*://*.google.bs/*"
          "*://*.google.ca/*"
          "*://*.google.cat/*"
          "*://*.google.cd/*"
          "*://*.google.cf/*"
          "*://*.google.cg/*"
          "*://*.google.ch/*"
          "*://*.google.ci/*"
          "*://*.google.cl/*"
          "*://*.google.cn/*"
          "*://*.google.co.bw/*"
          "*://*.google.co.ck/*"
          "*://*.google.co.cr/*"
          "*://*.google.co.id/*"
          "*://*.google.co.il/*"
          "*://*.google.co.in/*"
          "*://*.google.co.jp/*"
          "*://*.google.co.ke/*"
          "*://*.google.co.kr/*"
          "*://*.google.co.ls/*"
          "*://*.google.co.ma/*"
          "*://*.google.co.mz/*"
          "*://*.google.co.nz/*"
          "*://*.google.co.th/*"
          "*://*.google.co.tz/*"
          "*://*.google.co.ug/*"
          "*://*.google.co.uk/*"
          "*://*.google.co.uz/*"
          "*://*.google.co.ve/*"
          "*://*.google.co.vi/*"
          "*://*.google.co.za/*"
          "*://*.google.co.zm/*"
          "*://*.google.co.zw/*"
          "*://*.google.com.af/*"
          "*://*.google.com.ag/*"
          "*://*.google.com.ai/*"
          "*://*.google.com.ar/*"
          "*://*.google.com.au/*"
          "*://*.google.com.bd/*"
          "*://*.google.com.bh/*"
          "*://*.google.com.bn/*"
          "*://*.google.com.bo/*"
          "*://*.google.com.br/*"
          "*://*.google.com.by/*"
          "*://*.google.com.bz/*"
          "*://*.google.com.co/*"
          "*://*.google.com.cu/*"
          "*://*.google.com.cy/*"
          "*://*.google.com.do/*"
          "*://*.google.com.ec/*"
          "*://*.google.com.eg/*"
          "*://*.google.com.et/*"
          "*://*.google.com.fj/*"
          "*://*.google.com.gh/*"
          "*://*.google.com.gi/*"
          "*://*.google.com.gt/*"
          "*://*.google.com.hk/*"
          "*://*.google.com.jm/*"
          "*://*.google.com.kh/*"
          "*://*.google.com.kw/*"
          "*://*.google.com.lb/*"
          "*://*.google.com.ly/*"
          "*://*.google.com.mt/*"
          "*://*.google.com.mx/*"
          "*://*.google.com.my/*"
          "*://*.google.com.na/*"
          "*://*.google.com.nf/*"
          "*://*.google.com.ng/*"
          "*://*.google.com.ni/*"
          "*://*.google.com.np/*"
          "*://*.google.com.om/*"
          "*://*.google.com.pa/*"
          "*://*.google.com.pe/*"
          "*://*.google.com.ph/*"
          "*://*.google.com.pk/*"
          "*://*.google.com.pr/*"
          "*://*.google.com.py/*"
          "*://*.google.com.qa/*"
          "*://*.google.com.sa/*"
          "*://*.google.com.sb/*"
          "*://*.google.com.sg/*"
          "*://*.google.com.sl/*"
          "*://*.google.com.sv/*"
          "*://*.google.com.tj/*"
          "*://*.google.com.tr/*"
          "*://*.google.com.tw/*"
          "*://*.google.com.ua/*"
          "*://*.google.com.uy/*"
          "*://*.google.com.vc/*"
          "*://*.google.com.vn/*"
          "*://*.google.com/*"
          "*://*.google.cz/*"
          "*://*.google.de/*"
          "*://*.google.dj/*"
          "*://*.google.dk/*"
          "*://*.google.dm/*"
          "*://*.google.dz/*"
          "*://*.google.ee/*"
          "*://*.google.es/*"
          "*://*.google.fi/*"
          "*://*.google.fm/*"
          "*://*.google.fr/*"
          "*://*.google.ga/*"
          "*://*.google.ge/*"
          "*://*.google.gg/*"
          "*://*.google.gl/*"
          "*://*.google.gm/*"
          "*://*.google.gp/*"
          "*://*.google.gr/*"
          "*://*.google.gy/*"
          "*://*.google.hn/*"
          "*://*.google.hr/*"
          "*://*.google.ht/*"
          "*://*.google.hu/*"
          "*://*.google.ie/*"
          "*://*.google.im/*"
          "*://*.google.is/*"
          "*://*.google.it.ao/*"
          "*://*.google.it/*"
          "*://*.google.je/*"
          "*://*.google.jo/*"
          "*://*.google.kg/*"
          "*://*.google.ki/*"
          "*://*.google.kz/*"
          "*://*.google.la/*"
          "*://*.google.li/*"
          "*://*.google.lk/*"
          "*://*.google.lt/*"
          "*://*.google.lu/*"
          "*://*.google.lv/*"
          "*://*.google.md/*"
          "*://*.google.me/*"
          "*://*.google.mg/*"
          "*://*.google.mk/*"
          "*://*.google.mn/*"
          "*://*.google.ms/*"
          "*://*.google.mu/*"
          "*://*.google.mv/*"
          "*://*.google.mw/*"
          "*://*.google.nl/*"
          "*://*.google.no/*"
          "*://*.google.nr/*"
          "*://*.google.nu/*"
          "*://*.google.pl/*"
          "*://*.google.pn/*"
          "*://*.google.ps/*"
          "*://*.google.pt/*"
          "*://*.google.ro/*"
          "*://*.google.rs/*"
          "*://*.google.ru/*"
          "*://*.google.rw/*"
          "*://*.google.sc/*"
          "*://*.google.se/*"
          "*://*.google.sh/*"
          "*://*.google.si/*"
          "*://*.google.sk/*"
          "*://*.google.sm/*"
          "*://*.google.sn/*"
          "*://*.google.st/*"
          "*://*.google.td/*"
          "*://*.google.tg/*"
          "*://*.google.tk/*"
          "*://*.google.tl/*"
          "*://*.google.tm/*"
          "*://*.google.to/*"
          "*://*.google.tt/*"
          "*://*.google.vg/*"
          "*://*.google.vu/*"
          "*://*.google.ws/*"
          "*://beryl-themes.org/*"
          "*://blenderstuff.org/*"
          "*://box-look.org/*"
          "*://cli-apps.org/*"
          "*://compiz-themes.org/*"
          "*://debian-art.org/*"
          "*://e17-stuff.org/*"
          "*://ede-look.org/*"
          "*://eyeos-apps.org/*"
          "*://gentoo-art.org/*"
          "*://gimpstuff.org/*"
          "*://gnome-look.org/*"
          "*://gtk-apps.org/*"
          "*://inkscapestuff.org/*"
          "*://java-apps.org/*"
          "*://kde-apps.org/*"
          "*://kde-files.org/*"
          "*://kde-look.org/*"
          "*://kubuntu-art.org/*"
          "*://linuxmint-art.org/*"
          "*://mandriva-art.org/*"
          "*://opendesktop.org/*"
          "*://qt-apps.org/*"
          "*://scribusstuff.org/*"
          "*://server-apps.org/*"
          "*://suse-art.org/*"
          "*://ubuntu-art.org/*"
          "*://wine-apps.org/*"
          "*://xfce-look.org/*"
          "*://*.gamekult.com/*"
          "*://*.imdb.com/*"
          "*://*.imdb.de/*"
          "*://*.imdb.it/*"
          "*://*.imdb.es/*"
          "*://*.imdb.fr/*"
          "*://*.imdb.pt/*"
          "*://manager.co.th/*"
          "*://*.myspace.com/*"
          "*://*.baidu.com/*"
          "*://*.amazon.com/*"
          "*://*.amazon.com.au/*"
          "*://*.amazon.com.br/*"
          "*://*.amazon.com.mx/*"
          "*://*.amazon.com.tr/*"
          "*://*.amazon.ae/*"
          "*://*.amazon.ca/*"
          "*://*.amazon.cn/*"
          "*://*.amazon.de/*"
          "*://*.amazon.es/*"
          "*://*.amazon.fr/*"
          "*://*.amazon.co.jp/*"
          "*://*.amazon.co.uk/*"
          "*://*.amazon.in/*"
          "*://*.amazon.it/*"
          "*://*.amazon.nl/*"
          "*://*.amazon.sg/*"
          "*://*.photos.live.com/*"
          "*://*.hi5.com/*"
          "*://*.play.com/*"
          "*://*.ebay.at/*"
          "*://*.ebay.be/*"
          "*://*.ebay.ch/*"
          "*://*.ebay.co.th/*"
          "*://*.ebay.co.uk/*"
          "*://*.ebay.com.au/*"
          "*://*.ebay.com.hk/*"
          "*://*.ebay.com.my/*"
          "*://*.ebay.com.sg/*"
          "*://*.ebay.com/*"
          "*://*.ebay.de/*"
          "*://*.ebay.es/*"
          "*://*.ebay.fr/*"
          "*://*.ebay.ie/*"
          "*://*.ebay.in/*"
          "*://*.ebay.it/*"
          "*://*.ebay.nl/*"
          "*://*.ebay.ph/*"
          "*://*.ebay.pl/*"
          "*://*.allocine.fr/*"
          "*://*.filmstarts.de/*"
          "*://*.sensacine.com/*"
          "*://*.flixster.com/*"
          "*://*.rottentomatoes.com/*"
          "*://*.gamespot.com/*"
          "*://*.x.com/*"
          "*://*.twitter.com/*"
          "*://*.tweetdeck.com/*"
          "*://*.ravelry.com/*"
          "*://*.jeuxvideo.com/*"
          "*://*.beautify.it/*"
          "*://*.cnet.com/*"
          "*://*.last.fm/*"
          "*://*.lastfm.com.br/*"
          "*://*.lastfm.com.tr/*"
          "*://*.lastfm.de/*"
          "*://*.lastfm.es/*"
          "*://*.lastfm.fr/*"
          "*://*.lastfm.it/*"
          "*://*.lastfm.jp/*"
          "*://*.lastfm.pl/*"
          "*://*.lastfm.ru/*"
          "*://*.lastfm.se/*"
          "*://*.musicme.com/*"
          "*://*.tinypic.com/*"
          "*://*.photobucket.com/*"
          "*://*.backpage.com/*"
          "*://*.wretch.cc/*"
          "*://*.events-gallery.ch/*"
          "*://*.knowyourmeme.com/*"
          "*://*.tshirthell.com/*"
          "*://*.threadless.com/*"
          "*://*.viedemerde.fr/*"
          "*://*.fmylife.com/*"
          "*://*.vitadimerda.it/*"
          "*://*.vayamierdadevida.com/*"
          "*://*.fanformittliv.com/*"
          "*://*.xing.com/*"
          "*://*.stern.de/*"
          "*://*.deadspin.com/*"
          "*://*.gawker.com/*"
          "*://*.gizmodo.com.au/*"
          "*://*.gizmodo.com/*"
          "*://*.gizmodo.de/*"
          "*://*.gizmodo.jp/*"
          "*://*.gizmodo.pl/*"
          "*://*.io9.com/*"
          "*://*.jalopnik.com/*"
          "*://*.jezebel.com/*"
          "*://*.kotaku.com/*"
          "*://*.lifehacker.com/*"
          "*://*.nintendolife.com/*"
          "*://*.skyrock.com/*"
          "*://*.leboncoin.fr/*"
          "*://*.linkedin.com/*"
          "*://*.phapit.com/*"
          "*://*.reddit.com/*"
          "*://*.fukung.net/*"
          "*://*.fanbox.cc/*"
          "*://*.pixiv.net/*"
          "*://*.pixivision.net/*"
          "*://*.vroid.com/*"
          "*://*.rakuten.co.jp/*"
          "*://*.rakuten.com/*"
          "*://copainsdavant.linternaute.com/*"
          "*://*.engadget.com/*"
          "*://*.joystiq.com/*"
          "*://*.switched.com/*"
          "*://*.tuaw.com/*"
          "*://*.badoo.com/*"
          "*://*.hotornot.com/*"
          "*://*.steamcommunity.com/*"
          "*://*.steampowered.com/*"
          "*://*.1x.com/*"
          "*://*.wired.com/*"
          "*://*.maxmodels.pl/*"
          "*://*.digart.pl/*"
          "*://*.favstar.fm/*"
          "*://*.tweetmeme.com/*"
          "*://*.cyworld.com/*"
          "*://*.cyworld.co.kr/*"
          "*://*.cyworld.co.cn/*"
          "*://*.fotolog.com/*"
          "*://*.panoramio.com/*"
          "*://*.oxd.in/*"
          "*://*.vk.com/*"
          "*://*.vkontakte.ru/*"
          "*://*.plurk.com/*"
          "*://*.bebo.com/*"
          "*://*.okcupid.com/*"
          "*://*.paheal.net/*"
          "*://*.feedly.com/*"
          "*://*.inkbunny.net/*"
          "*://*.instructables.com/*"
          "*://*.nofrag.com/*"
          "*://*.pict.mobi/*"
          "*://*.zing.vn/*"
          "*://*.bandpage.com/*"
          "*://*.rootmusic.com/fb/*"
          "*://*.liveshare.com/*"
          "*://*.weheartit.com/*"
          "*://*.funnyjunk.com/*"
          "*://*.02blog.it/*"
          "*://*.06blog.it/*"
          "*://*.artsblog.it/*"
          "*://*.autoblog.it/*"
          "*://*.bebeblog.it/*"
          "*://*.benessereblog.it/*"
          "*://*.betsblog.it/*"
          "*://*.booksblog.it/*"
          "*://*.calcioblog.it/*"
          "*://*.cineblog.it/*"
          "*://*.clickblog.it/*"
          "*://*.comicsblog.it/*"
          "*://*.crimeblog.it/*"
          "*://*.deluxeblog.it/*"
          "*://*.designerblog.it/*"
          "*://*.downloadblog.it/*"
          "*://*.ecoblog.it/*"
          "*://*.fashionblog.it/*"
          "*://*.finanzablog.it/*"
          "*://*.gadgetblog.it/*"
          "*://*.gamesblog.it/*"
          "*://*.gossipblog.it/*"
          "*://*.gustoblog.it/*"
          "*://*.happyblog.it/*"
          "*://*.melablog.it/*"
          "*://*.mobileblog.it/*"
          "*://*.motoblog.it/*"
          "*://*.motorsportblog.it/*"
          "*://*.ossblog.it/*"
          "*://*.outdoorblog.it/*"
          "*://*.pinkblog.it/*"
          "*://*.polisblog.it/*"
          "*://*.queerblog.it/*"
          "*://*.softblog.it/*"
          "*://*.soldiblog.it/*"
          "*://*.soundsblog.it/*"
          "*://*.toysblog.it/*"
          "*://*.travelblog.it/*"
          "*://*.tvblog.it/*"
          "*://*.yelp.ae/*"
          "*://*.yelp.at/*"
          "*://*.yelp.be/*"
          "*://*.yelp.ca/*"
          "*://*.yelp.ch/*"
          "*://*.yelp.cn/*"
          "*://*.yelp.co.cz/*"
          "*://*.yelp.co.jp/*"
          "*://*.yelp.co.nz/*"
          "*://*.yelp.co.uk/*"
          "*://*.yelp.com.au/*"
          "*://*.yelp.com.pl/*"
          "*://*.yelp.com/*"
          "*://*.yelp.de/*"
          "*://*.yelp.dk/*"
          "*://*.yelp.es/*"
          "*://*.yelp.fi/*"
          "*://*.yelp.fr/*"
          "*://*.yelp.ie/*"
          "*://*.yelp.in/*"
          "*://*.yelp.it/*"
          "*://*.yelp.nl/*"
          "*://*.yelp.no/*"
          "*://*.yelp.pt/*"
          "*://*.yelp.ru/*"
          "*://*.yelp.se/*"
          "*://*.hwzone.co.il/*"
          "*://*.spinchat.com/*"
          "*://*.spin.de/*"
          "*://*.etsy.com/*"
          "*://*.asos.com/*"
          "*://*.asos.fr/*"
          "*://*.asos.de/*"
          "*://*.pinterest.ca/*"
          "*://*.pinterest.ch/*"
          "*://*.pinterest.co.in/*"
          "*://*.pinterest.co.kr/*"
          "*://*.pinterest.co.nz/*"
          "*://*.pinterest.co.uk/*"
          "*://*.pinterest.com.au/*"
          "*://*.pinterest.com.mx/*"
          "*://*.pinterest.com/*"
          "*://*.pinterest.cz/*"
          "*://*.pinterest.de/*"
          "*://*.pinterest.dk/*"
          "*://*.pinterest.es/*"
          "*://*.pinterest.fi/*"
          "*://*.pinterest.fr/*"
          "*://*.pinterest.ie/*"
          "*://*.pinterest.it/*"
          "*://*.pinterest.jp/*"
          "*://*.pinterest.nl/*"
          "*://*.pinterest.pt/*"
          "*://*.pinterest.ru/*"
          "*://*.pinterest.se/*"
          "*://*.500px.com/*"
          "*://*.modelmayhem.com/*"
          "*://*.yam.com/*"
          "*://mail.google.com/*"
          "*://*.8tracks.com/*"
          "*://*.gameblog.fr/*"
          "*://*.diasp.eu/*"
          "*://*.diasp.org/*"
          "*://*.joindiaspora.com/*"
          "*://*.memecrunch.com/*"
          "*://*.jeuxvideo.fr/*"
          "*://*.boardgamegeek.com/*"
          "*://*.rpggeek.com/*"
          "*://*.videogamegeek.com/*"
          "*://*.e621.net/*"
          "*://*.e926.net/*"
          "*://danbooru.donmai.us/*"
          "*://*.jootix.com/*"
          "*://*.bing.com/*"
          "*://*.xuite.net/*"
          "*://*.craigslist.org/*"
          "*://*.zinio.com/*"
          "*://*.dribbble.com/*"
          "*://*.pixnet.net/*"
          "*://*.dropbox.com/*"
          "*://*.newegg.ca/*"
          "*://*.newegg.com/*"
          "*://*.newegg.com.cn/*"
          "*://*.furaffinity.net/*"
          "*://*.taobao.com/*"
          "*://*.tmall.com/*"
          "*://*.lazygirls.info/*"
          "*://*.zhihu.com/*"
          "*://*.hupu.com/*"
          "*://*.weibo.com/*"
          "*://*.douban.com/*"
          "*://*.github.com/*"
          "*://*.freepik.com/*"
          "*://*.weasyl.com/*"
          "*://*.quora.com/*"
          "*://*.wallbase.cc/*"
          "*://*.wallhaven.cc/*"
          "*://*.blu-ray.com/*"
          "*://*.minitokyo.net/*"
          "*://*.animepaper.net/*"
          "*://*.choualbox.com/*"
          "*://*.yandex.at/*"
          "*://*.yandex.au/*"
          "*://*.yandex.be/*"
          "*://*.yandex.ca/*"
          "*://*.yandex.ch/*"
          "*://*.yandex.cl/*"
          "*://*.yandex.cn/*"
          "*://*.yandex.co.hu/*"
          "*://*.yandex.co.id/*"
          "*://*.yandex.co.il/*"
          "*://*.yandex.co.kr/*"
          "*://*.yandex.co.nz/*"
          "*://*.yandex.co.uk/*"
          "*://*.yandex.co.za/*"
          "*://*.yandex.co/*"
          "*://*.yandex.com.ar/*"
          "*://*.yandex.com.au/*"
          "*://*.yandex.com.br/*"
          "*://*.yandex.com.eg/*"
          "*://*.yandex.com.gr/*"
          "*://*.yandex.com.hk/*"
          "*://*.yandex.com.mx/*"
          "*://*.yandex.com.my/*"
          "*://*.yandex.com.pe/*"
          "*://*.yandex.com.ph/*"
          "*://*.yandex.com.sg/*"
          "*://*.yandex.com.tr/*"
          "*://*.yandex.com.tw/*"
          "*://*.yandex.com.ve/*"
          "*://*.yandex.com.vn/*"
          "*://*.yandex.com/*"
          "*://*.yandex.cz/*"
          "*://*.yandex.de/*"
          "*://*.yandex.dk/*"
          "*://*.yandex.es/*"
          "*://*.yandex.fi/*"
          "*://*.yandex.fr/*"
          "*://*.yandex.ie/*"
          "*://*.yandex.in/*"
          "*://*.yandex.it/*"
          "*://*.yandex.jp/*"
          "*://*.yandex.net/*"
          "*://*.yandex.nl/*"
          "*://*.yandex.pt/*"
          "*://*.yandex.rs/*"
          "*://*.yandex.ru/*"
          "*://*.yandex.se/*"
          "*://*.yandex.sk/*"
          "*://*.yandex.ua/*"
          "*://*.kununu.com/*"
          "*://miiverse.nintendo.net/*"
          "*://*.fetlife.com/*"
          "*://*.kenmarcus.com/*"
          "*://*.zenfolio.com/*"
          "*://*.escapistmagazine.com/*"
          "*://*.d3.ru/*"
          "*://*.dirty.ru/*"
          "*://*.slickdeals.net/*"
          "*://*.flipkart.com/*"
          "*://*.artuk.org/*"
          "*://*.n11.com/*"
          "*://*.carrefoursa.com/*"
          "*://ask.fm/*"
          "*://*.artlimited.net/*"
          "*://*.instagram.com/*"
          "*://kephost.com/*"
          "*://*.visualart.me/*"
          "*://*.visualart.ro/*"
          "*://*.photo.net/*"
          "*://*.gettyimages.ae/*"
          "*://*.gettyimages.at/*"
          "*://*.gettyimages.be/*"
          "*://*.gettyimages.ca/*"
          "*://*.gettyimages.ch/*"
          "*://*.gettyimages.cn/*"
          "*://*.gettyimages.co.cz/*"
          "*://*.gettyimages.co.jp/*"
          "*://*.gettyimages.co.nz/*"
          "*://*.gettyimages.co.uk/*"
          "*://*.gettyimages.com.au/*"
          "*://*.gettyimages.com.pl/*"
          "*://*.gettyimages.com/*"
          "*://*.gettyimages.de/*"
          "*://*.gettyimages.dk/*"
          "*://*.gettyimages.es/*"
          "*://*.gettyimages.fi/*"
          "*://*.gettyimages.fr/*"
          "*://*.gettyimages.ie/*"
          "*://*.gettyimages.in/*"
          "*://*.gettyimages.it/*"
          "*://*.gettyimages.nl/*"
          "*://*.gettyimages.no/*"
          "*://*.gettyimages.pt/*"
          "*://*.gettyimages.ru/*"
          "*://*.gettyimages.se/*"
          "*://*.pixabay.com/*"
          "*://*.freeimages.com/*"
          "*://*.artstation.com/*"
          "*://*.artsper.com/*"
          "*://*.istockphoto.com/*"
          "*://*.everystockphoto.com/*"
          "*://*.smugmug.com/*"
          "*://*.cgcookie.com/*"
          "*://*.dreamstime.com/*"
          "*://*.cgsociety.org/*"
          "*://*.mobypicture.com/*"
          "*://*.foursquare.com/*"
          "*://*.metmuseum.org/*"
          "*://*.wookmark.com/*"
          "*://*.stocksnap.io/*"
          "*://*.stocksnap.com/*"
          "*://*.pexels.com/*"
          "*://stock.adobe.com/*"
          "*://*.3dtotal.com/*"
          "*://*.fubiz.net/*"
          "*://*.drawcrowd.com/*"
          "*://*.wykop.pl/*"
          "*://9gag.com/*"
          "*://app.hiptest.com/*"
          "*://*.booru.org/*"
          "*://*.gelbooru.com/*"
          "*://*.mspabooru.com/*"
          "*://*.safebooru.org/*"
          "*://*.xbooru.com/*"
          "*://*.depositphotos.com/*"
          "*://*.airbnb.ae/*"
          "*://*.airbnb.am/*"
          "*://*.airbnb.at/*"
          "*://*.airbnb.az/*"
          "*://*.airbnb.ba/*"
          "*://*.airbnb.be/*"
          "*://*.airbnb.ca/*"
          "*://*.airbnb.cat/*"
          "*://*.airbnb.ch/*"
          "*://*.airbnb.cl/*"
          "*://*.airbnb.cn/*"
          "*://*.airbnb.co.cr/*"
          "*://*.airbnb.co.id/*"
          "*://*.airbnb.co.in/*"
          "*://*.airbnb.co.kr/*"
          "*://*.airbnb.co.nz/*"
          "*://*.airbnb.co.uk/*"
          "*://*.airbnb.co.ve/*"
          "*://*.airbnb.co.za/*"
          "*://*.airbnb.com.ar/*"
          "*://*.airbnb.com.au/*"
          "*://*.airbnb.com.bo/*"
          "*://*.airbnb.com.br/*"
          "*://*.airbnb.com.bz/*"
          "*://*.airbnb.com.co/*"
          "*://*.airbnb.com.ec/*"
          "*://*.airbnb.com.ee/*"
          "*://*.airbnb.com.gt/*"
          "*://*.airbnb.com.hk/*"
          "*://*.airbnb.com.hn/*"
          "*://*.airbnb.com.mt/*"
          "*://*.airbnb.com.my/*"
          "*://*.airbnb.com.ni/*"
          "*://*.airbnb.com.pa/*"
          "*://*.airbnb.com.pe/*"
          "*://*.airbnb.com.ph/*"
          "*://*.airbnb.com.py/*"
          "*://*.airbnb.com.ro/*"
          "*://*.airbnb.com.sg/*"
          "*://*.airbnb.com.sv/*"
          "*://*.airbnb.com.tr/*"
          "*://*.airbnb.com.tw/*"
          "*://*.airbnb.com.ua/*"
          "*://*.airbnb.com/*"
          "*://*.airbnb.cz/*"
          "*://*.airbnb.de/*"
          "*://*.airbnb.dk/*"
          "*://*.airbnb.es/*"
          "*://*.airbnb.fi/*"
          "*://*.airbnb.fr/*"
          "*://*.airbnb.gr/*"
          "*://*.airbnb.gy/*"
          "*://*.airbnb.hu/*"
          "*://*.airbnb.ie/*"
          "*://*.airbnb.is/*"
          "*://*.airbnb.it/*"
          "*://*.airbnb.jp/*"
          "*://*.airbnb.lt/*"
          "*://*.airbnb.lv/*"
          "*://*.airbnb.mx/*"
          "*://*.airbnb.nl/*"
          "*://*.airbnb.no/*"
          "*://*.airbnb.pl/*"
          "*://*.airbnb.pt/*"
          "*://*.airbnb.rs/*"
          "*://*.airbnb.ru/*"
          "*://*.airbnb.se/*"
          "*://*.airbnb.si/*"
          "*://*.booking.com/*"
          "*://*.publicdomainpictures.net/*"
          "*://*.avopix.ae/*"
          "*://*.avopix.at/*"
          "*://*.avopix.be/*"
          "*://*.avopix.ca/*"
          "*://*.avopix.ch/*"
          "*://*.avopix.cn/*"
          "*://*.avopix.co.cz/*"
          "*://*.avopix.co.jp/*"
          "*://*.avopix.co.nz/*"
          "*://*.avopix.co.uk/*"
          "*://*.avopix.com.au/*"
          "*://*.avopix.com.pl/*"
          "*://*.avopix.com/*"
          "*://*.avopix.de/*"
          "*://*.avopix.dk/*"
          "*://*.avopix.es/*"
          "*://*.avopix.fi/*"
          "*://*.avopix.fr/*"
          "*://*.avopix.ie/*"
          "*://*.avopix.in/*"
          "*://*.avopix.it/*"
          "*://*.avopix.nl/*"
          "*://*.avopix.no/*"
          "*://*.avopix.pt/*"
          "*://*.avopix.ru/*"
          "*://*.avopix.se/*"
          "*://*.bakashots.me/*"
          "*://*.fanart.tv/*"
          "*://*.fotki.com/*"
          "*://*.free-images.com/*"
          "*://*.galerie-sakura.com/*"
          "*://*.lostfilm.info/*"
          "*://*.lostfilm.run/*"
          "*://*.lostfilm.tv/*"
          "*://*.meetup.com/*"
          "*://*.nasa.gov/*"
          "*://*.photoblink.com/*"
          "*://*.photoforum.ru/*"
          "*://*.photo-forum.net/*"
          "*://*.photopost.cz/*"
          "*://*.photosight.ru/*"
          "*://*.picturepush.com/*"
          "*://*.tuchong.com/*"
          "*://*.wireimage.co.in/*"
          "*://*.wireimage.com.au/*"
          "*://*.wireimage.com.pt/*"
          "*://*.wireimage.com/*"
          "*://*.wireimage.de/*"
          "*://*.wireimage.es/*"
          "*://*.wireimage.fr/*"
          "*://*.wireimage.it/*"
          "*://*.wireimage.jp/*"
          "*://*.wireimage.se/*"
          "*://*.wysp.ws/*"
          "*://*.tripadvisor.at/*"
          "*://*.tripadvisor.be/*"
          "*://*.tripadvisor.ca/*"
          "*://*.tripadvisor.ch/*"
          "*://*.tripadvisor.cl/*"
          "*://*.tripadvisor.cn/*"
          "*://*.tripadvisor.co.hu/*"
          "*://*.tripadvisor.co.id/*"
          "*://*.tripadvisor.co.il/*"
          "*://*.tripadvisor.co.kr/*"
          "*://*.tripadvisor.co.nz/*"
          "*://*.tripadvisor.co.uk/*"
          "*://*.tripadvisor.co.za/*"
          "*://*.tripadvisor.co/*"
          "*://*.tripadvisor.com.ar/*"
          "*://*.tripadvisor.com.au/*"
          "*://*.tripadvisor.com.br/*"
          "*://*.tripadvisor.com.eg/*"
          "*://*.tripadvisor.com.gr/*"
          "*://*.tripadvisor.com.hk/*"
          "*://*.tripadvisor.com.mx/*"
          "*://*.tripadvisor.com.my/*"
          "*://*.tripadvisor.com.pe/*"
          "*://*.tripadvisor.com.ph/*"
          "*://*.tripadvisor.com.sg/*"
          "*://*.tripadvisor.com.tr/*"
          "*://*.tripadvisor.com.tw/*"
          "*://*.tripadvisor.com.ve/*"
          "*://*.tripadvisor.com.vn/*"
          "*://*.tripadvisor.com/*"
          "*://*.tripadvisor.cz/*"
          "*://*.tripadvisor.de/*"
          "*://*.tripadvisor.dk/*"
          "*://*.tripadvisor.es/*"
          "*://*.tripadvisor.fi/*"
          "*://*.tripadvisor.fr/*"
          "*://*.tripadvisor.ie/*"
          "*://*.tripadvisor.in/*"
          "*://*.tripadvisor.it/*"
          "*://*.tripadvisor.jp/*"
          "*://*.tripadvisor.nl/*"
          "*://*.tripadvisor.pt/*"
          "*://*.tripadvisor.rs/*"
          "*://*.tripadvisor.ru/*"
          "*://*.tripadvisor.se/*"
          "*://*.tripadvisor.sk/*"
          "*://*.freerangestock.com/*"
          "*://*.joemonster.org/*"
          "*://*.vox.com/*"
          "*://*.behance.net/*"
          "*://*.goodreads.com/*"
          "*://*.pikwizard.com/*"
          "*://*.thingiverse.com/*"
          "*://*.derpibooru.org/*"
          "*://*.aminus3.com/*"
          "*://*.livememe.com/*"
          "*://*.8ch.net/*"
          "*://*.8kun.top/*"
          "*://*.giphy.com/*"
          "*://*.imageevent.com/*"
          "*://*.aol.com/*"
          "*://*.govdeals.com/*"
          "*://*.minds.com/*"
          "*://*.gitlab.com/*"
          "*://*.phorio.com/*"
          "*://*.wallapop.com/*"
          "*://*.gog.com/*"
          "*://*.picclick.at/*"
          "*://*.picclick.be/*"
          "*://*.picclick.ca/*"
          "*://*.picclick.ch/*"
          "*://*.picclick.co.uk/*"
          "*://*.picclick.com.au/*"
          "*://*.picclick.com/*"
          "*://*.picclick.de/*"
          "*://*.picclick.es/*"
          "*://*.picclick.fr/*"
          "*://*.picclick.ie/*"
          "*://*.picclick.it/*"
          "*://*.picclick.nl/*"
          "*://*.loc.gov/*"
          "*://*.duitang.com/*"
          "*://*.wdl.org/*"
          "*://*.hibid.com/*"
          "*://*.maxsold.com/*"
          "*://*.myanimelist.net/*"
          "*://*.themoviedb.org/*"
          "*://*.twibooru.org/*"
          "*://*.catawiki.com/*"
          "*://*.qwant.com/*"
          "*://*.duckduckgo.com/*"
          "*://*.sogou.cn/*"
          "*://*.sogou.com/*"
          "*://docs.google.com/spreadsheets/*"
          "*://*.naver.com/*"
          "*://*.allegro.pl/*"
          "*://*.startpage.com/*"
          "*://*.redgifs.com/*"
          "*://*.you.com/*"
          "*://*.wikifeet.com/*"
          "*://*.wikifeetx.com/*"
          "*://*.mywikifeet.com/*"
          "*://*.gfycat.com/*"
          "*://*.tipeee.com/*"
          "*://*.pic2.me/*"
          "*://*.celebs-place.com/*"
          "*://*.viewbug.com/*"
          "*://*.shein.com/*"
          "*://*.huaban.com/*"
          "*://*.bnf.fr/*"
          "*://*.tiktok.com/*"
          "*://*.unlimphotos.com/*"
          "*://*.eksisozluk.com/*"
          "*://*.moddb.com/*"
          "*://*.indiedb.com/*"
          "*://*.motherless.com/*"
          "*://*.tnaflix.com/*"
          "*://*.2gis.com/*"
          "*://*.2gis.ae/*"
          "*://*.2gis.az/*"
          "*://*.2gis.cl/*"
          "*://*.2gis.cz/*"
          "*://*.2gis.kg/*"
          "*://*.2gis.kz/*"
          "*://*.2gis.ru/*"
          "*://*.2gis.uz/*"
          "*://*.urbi-bh.com/*"
          "*://*.urbi-kw.com/*"
          "*://*.urbi-qa.com/*"
          "*://*.urbi-sa.com/*"
          "*://*.rule34.xxx/*"
          "*://*.boredpanda.com/*"
          "*://*.yiffer.xyz/*"
          "*://*.homeexchange.com/*"
          "*://*.homeexchange.fr/*"
          "*://*.homeexchange.it/*"
          "*://*.fandom.com/*"
          "*://*.temu.com/*"
          "*://*.fotocommunity.com/*"
          "*://*.fotocommunity.de/*"
          "*://*.fotocommunity.es/*"
          "*://*.fotocommunity.fr/*"
          "*://*.fotocommunity.it/*"
          "*://*.ecranlarge.com/*"
          "*://*.hejto.pl/*"
          "*://*.geograph.org/*"
          "*://*.geograph.org.uk/*"
          "*://*.geograph.org.gg/*"
          "*://*.geograph.ie/*"
          "*://*.hlipp.de/*"
          "*://*.canmore.org.uk/*"
          "*://*.head-fi.org/*"
          "*://*.wildcritters.ws/*"
          "*://*.auscelebs.net/*"
          "*://*.douyin.com/*"
          "*://*.picsart.com/*"
          "*://*.lemon8-app.com/*"
          "*://*.gcsurplus.ca/*"
          "*://*.iwara.tv/*"
          "*://*.usbeketrica.com/*"
          "*://*.letterboxd.com/*"
          "*://*.figma.com/files/*"
          "*://*.kleinanzeigen.de/*"
          "*://*.trakt.tv/*"
          "*://*.vsco.co/*"
          "*://*.woot.com/*"
          "*://*.vero.co/*"
          "*://*.anichart.net/*"
          "*://*.anilist.co/*"
          "*://*.freeimage.host/*"
          "*://drive.google.com/*"
          "*://*.findagrave.com/*"
          "*://*.ldlc.com/*"
          "*://*.mubi.com/*"
          "*://*.tapas.io/*"
          "*://*.sspai.com/*"
          "*://*.bsky.app/*"
          "*://*.onzemondial.com/*"
          "*://*.cineserie.com/*"
          "*://*.opendata.hauts-de-seine.fr/*"
          "*://*.nature.com/*"
          "*://*.galerie9art.fr/*"
          "*://*.worldatlas.com/*"
          "*://*.kotnauction.com/*"
          "*://*.techradar.com/*"
          "*://*.inoreader.com/*"
          "*://*.unsplash.com/*"
          "*://*.defense.gov/*"
          "*://*.mil/*"
          "*://*.la-croix.com/*"
          "*://*.routard.com/*"
          "*://podcasts.apple.com/*"
          "*://apps.apple.com/*"
          "*://books.apple.com/*"
          "*://music.apple.com/*"
          "*://*.monuments-nationaux.fr/*"
          "*://*.phys.org/*"
          "*://*.medicalxpress.com/*"
          "*://*.sciencex.com/*"
          "*://*.techxplore.com/*"
          "*://*.spotify.com/*"
          "*://*.songkick.com/*"
          "*://*.nextdoor.com/*"
          "*://*.polona.pl/*"
        ];
        platforms = platforms.all;
      };
    };
    "hulu-ad-blocker" = buildFirefoxXpiAddon {
      pname = "hulu-ad-blocker";
      version = "1.0.0";
      addonId = "{a1541a5e-68f8-480d-8f10-784f93079060}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3933295/hulu_ad_blocker_firefox-1.0.0.xpi";
      sha256 = "c741eeac7c8f13af4bb5d5fdafa0b4f7f90d137f5604d28b03ad344832e2ab1d";
      meta = with lib;
      {
        homepage = "https://www.huluadblocker.com";
        description = "Block All Hulu Ads, Stream Freely!";
        license = licenses.mpl20;
        mozPermissions = [ "https://*/*" "http://*/*" ];
        platforms = platforms.all;
      };
    };
    "i-auto-fullscreen" = buildFirefoxXpiAddon {
      pname = "i-auto-fullscreen";
      version = "2.0.4";
      addonId = "{809d8a54-1e2d-4fbb-81b4-36ff597b225f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3853680/i_auto_fullscreen-2.0.4.xpi";
      sha256 = "7e5c9895eac6dac3b1e852e7bc5408b28b559dff9fd26de620157ab7e432169f";
      meta = with lib;
      {
        homepage = "https://github.com/insiderser/AutoFullscreen/";
        description = "Open all Firefox windows in full screen mode";
        license = licenses.mit;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "i-dont-care-about-cookies" = buildFirefoxXpiAddon {
      pname = "i-dont-care-about-cookies";
      version = "3.5.0";
      addonId = "jid1-KKzOGWgsW3Ao4Q@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4202634/i_dont_care_about_cookies-3.5.0.xpi";
      sha256 = "4de284454217fc4bee0744fb0aad8e0e10fa540dc03251013afc3ee4c20e49b0";
      meta = with lib;
      {
        homepage = "https://www.i-dont-care-about-cookies.eu/";
        description = "Get rid of cookie warnings from almost all websites!";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "storage"
          "http://*/*"
          "https://*/*"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
        ];
        platforms = platforms.all;
      };
    };
    "i2p-in-private-browsing" = buildFirefoxXpiAddon {
      pname = "i2p-in-private-browsing";
      version = "2.6.0";
      addonId = "i2ppb@eyedeekay.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339795/i2p_in_private_browsing-2.6.0.xpi";
      sha256 = "ab75b4c58e2e669d353632d4a920102576e81f6cff81d7a102a1f9cd7637ac79";
      meta = with lib;
      {
        homepage = "https://github.com/eyedeekay/i2psetproxy.js";
        description = "Uses Container Tabs to set up a browser to use I2P conveniently and safely by setting up an I2P-powered Private Browsing mode, inspired by the similar feature in Brave. Requires an I2P router on the host system.";
        license = licenses.mit;
        mozPermissions = [
          "theme"
          "alarms"
          "browsingData"
          "bookmarks"
          "contextMenus"
          "management"
          "notifications"
          "proxy"
          "privacy"
          "storage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextualIdentities"
          "cookies"
          "history"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "iina-open-in-mpv" = buildFirefoxXpiAddon {
      pname = "iina-open-in-mpv";
      version = "2.0.1";
      addonId = "{d66c8515-1e0d-408f-82ee-2682f2362726}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3901594/iina_open_in_mpv-2.0.1.xpi";
      sha256 = "8d13f486f13249c1a74362b91055fe820b6ee81d21f58ddf2716189c8f1c31b7";
      meta = with lib;
      {
        homepage = "https://github.com/Baldomo/open-in-mpv";
        description = "Open videos and audio files in mpv.";
        license = licenses.gpl3;
        mozPermissions = [ "tabs" "activeTab" "contextMenus" "storage" ];
        platforms = platforms.all;
      };
    };
    "image-search-options" = buildFirefoxXpiAddon {
      pname = "image-search-options";
      version = "3.0.12";
      addonId = "{4a313247-8330-4a81-948e-b79936516f78}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3059971/image_search_options-3.0.12.xpi";
      sha256 = "1fbdd8597fc32b1be11302a958ea3ba2b010edcfeb432c299637b2c58c6fd068";
      meta = with lib;
      {
        homepage = "http://saucenao.com/";
        description = "A customizable reverse image search tool that conveniently presents a variety of top image search engines.";
        license = licenses.mpl11;
        mozPermissions = [
          "storage"
          "contextMenus"
          "activeTab"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "immersive-translate" = buildFirefoxXpiAddon {
      pname = "immersive-translate";
      version = "1.8.2";
      addonId = "{5efceaa7-f3a2-4e59-a54b-85319448e305}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336719/immersive_translate-1.8.2.xpi";
      sha256 = "4ecc7740917a6c4a91c4dfcb588e1899bf846c939cf1a85773f4359ae5bfcfee";
      meta = with lib;
      {
        homepage = "https://immersivetranslate.com";
        description = "Free Translate Website, Translate PDF &amp; Epub eBook, Translate Video Subtitles in Bilingual";
        license = {
          shortName = "immersive-translate";
          fullName = "End-User License Agreement for Immersive Translate";
          url = "https://addons.mozilla.org/en-US/firefox/addon/immersive-translate/eula/";
          free = false;
        };
        mozPermissions = [
          "<all_urls>"
          "storage"
          "activeTab"
          "contextMenus"
          "webRequest"
          "webRequestBlocking"
          "file:///*"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "improved-tube" = buildFirefoxXpiAddon {
      pname = "improved-tube";
      version = "4.1095";
      addonId = "{3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339680/youtube_addon-4.1095.xpi";
      sha256 = "48a6bf200a3e7f57b06a0f8e26dc5c7071e08c852354d6a2b9c4913d86f4f369";
      meta = with lib;
      {
        homepage = "https://github.com/code4charity/YouTube-Extension/";
        description = "Youtube Extension. Powerful but lightweight. Enrich your Youtube &amp; content selection.\nMake YouTube tidy&amp;smart! Layout Filters Shortcuts Adblocker Playlist";
        license = {
          shortName = "improved-tube";
          fullName = "ImprovedTube License";
          url = "https://github.com/code-charity/youtube/blob/master/LICENSE";
          free = false;
        };
        mozPermissions = [
          "contextMenus"
          "storage"
          "https://www.youtube.com/*"
          "https://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "impulse-blocker" = buildFirefoxXpiAddon {
      pname = "impulse-blocker";
      version = "1.2.0";
      addonId = "{3a7ab27c-6a20-4d24-9fda-5e38f8992556}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3710342/impulse_blocker-1.2.0.xpi";
      sha256 = "b6be12a475fdc57197ed753a75cdde9143d3e0f6ddbca07a02cc8ed87decd27a";
      meta = with lib;
      {
        homepage = "https://github.com/raicem/impulse-blocker";
        description = "Block distracting websites. Just list the sites you want Impulse Blocker to pause or completely avoid.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "indie-wiki-buddy" = buildFirefoxXpiAddon {
      pname = "indie-wiki-buddy";
      version = "3.9.1";
      addonId = "{cb31ec5d-c49a-4e5a-b240-16c767444f62}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4327050/indie_wiki_buddy-3.9.1.xpi";
      sha256 = "30c839c33d88a00270015835d810836d55ede4ebe757308ea2ce539c0076e514";
      meta = with lib;
      {
        homepage = "https://getindie.wiki/";
        description = "Helping you discover quality, independent wikis!\n\nWhen visiting a Fandom wiki, Indie Wiki Buddy redirects or alerts you of independent alternatives. It also filters search engine results. BreezeWiki is also supported, to reduce clutter on Fandom.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "webRequest"
          "notifications"
          "scripting"
          "https://*.fandom.com/*"
          "https://*.fextralife.com/*"
          "https://*.neoseeker.com/*"
          "https://breezewiki.com/*"
          "https://antifandom.com/*"
          "https://bw.artemislena.eu/*"
          "https://breezewiki.catsarch.com/*"
          "https://breezewiki.esmailelbob.xyz/*"
          "https://breezewiki.frontendfriendly.xyz/*"
          "https://bw.hamstro.dev/*"
          "https://breeze.hostux.net/*"
          "https://breezewiki.hyperreal.coffee/*"
          "https://breeze.mint.lgbt/*"
          "https://breezewiki.nadeko.net/*"
          "https://nerd.whatever.social/*"
          "https://breeze.nohost.network/*"
          "https://z.opnxng.com/*"
          "https://bw.projectsegfau.lt/*"
          "https://breezewiki.pussthecat.org/*"
          "https://bw.vern.cc/*"
          "https://breeze.whateveritworks.org/*"
          "https://breezewiki.woodland.cafe/*"
          "https://*.bing.com/search*"
          "https://search.brave.com/search*"
          "https://*.duckduckgo.com/*"
          "https://*.ecosia.org/*"
          "https://kagi.com/search*"
          "https://*.qwant.com/*"
          "https://*.search.yahoo.com/*"
          "https://*.startpage.com/*"
          "https://*.ya.ru/*"
          "https://*.yandex.az/*"
          "https://*.yandex.by/*"
          "https://*.yandex.co.il/*"
          "https://*.yandex.com.am/*"
          "https://*.yandex.com.ge/*"
          "https://*.yandex.com.tr/*"
          "https://*.yandex.com/*"
          "https://*.yandex.ee/*"
          "https://*.yandex.eu/*"
          "https://*.yandex.fr/*"
          "https://*.yandex.kz/*"
          "https://*.yandex.lt/*"
          "https://*.yandex.lv/*"
          "https://*.yandex.md/*"
          "https://*.yandex.ru/*"
          "https://*.yandex.tj/*"
          "https://*.yandex.tm/*"
          "https://*.yandex.uz/*"
          "https://www.google.com/search*"
          "https://www.google.ad/search*"
          "https://www.google.ae/search*"
          "https://www.google.com.af/search*"
          "https://www.google.com.ag/search*"
          "https://www.google.com.ai/search*"
          "https://www.google.al/search*"
          "https://www.google.am/search*"
          "https://www.google.co.ao/search*"
          "https://www.google.com.ar/search*"
          "https://www.google.as/search*"
          "https://www.google.at/search*"
          "https://www.google.com.au/search*"
          "https://www.google.az/search*"
          "https://www.google.ba/search*"
          "https://www.google.com.bd/search*"
          "https://www.google.be/search*"
          "https://www.google.bf/search*"
          "https://www.google.bg/search*"
          "https://www.google.com.bh/search*"
          "https://www.google.bi/search*"
          "https://www.google.bj/search*"
          "https://www.google.com.bn/search*"
          "https://www.google.com.bo/search*"
          "https://www.google.com.br/search*"
          "https://www.google.bs/search*"
          "https://www.google.bt/search*"
          "https://www.google.co.bw/search*"
          "https://www.google.by/search*"
          "https://www.google.com.bz/search*"
          "https://www.google.ca/search*"
          "https://www.google.cd/search*"
          "https://www.google.cf/search*"
          "https://www.google.cg/search*"
          "https://www.google.ch/search*"
          "https://www.google.ci/search*"
          "https://www.google.co.ck/search*"
          "https://www.google.cl/search*"
          "https://www.google.cm/search*"
          "https://www.google.cn/search*"
          "https://www.google.com.co/search*"
          "https://www.google.co.cr/search*"
          "https://www.google.com.cu/search*"
          "https://www.google.cv/search*"
          "https://www.google.com.cy/search*"
          "https://www.google.cz/search*"
          "https://www.google.de/search*"
          "https://www.google.dj/search*"
          "https://www.google.dk/search*"
          "https://www.google.dm/search*"
          "https://www.google.com.do/search*"
          "https://www.google.dz/search*"
          "https://www.google.com.ec/search*"
          "https://www.google.ee/search*"
          "https://www.google.com.eg/search*"
          "https://www.google.es/search*"
          "https://www.google.com.et/search*"
          "https://www.google.fi/search*"
          "https://www.google.com.fj/search*"
          "https://www.google.fm/search*"
          "https://www.google.fr/search*"
          "https://www.google.ga/search*"
          "https://www.google.ge/search*"
          "https://www.google.gg/search*"
          "https://www.google.com.gh/search*"
          "https://www.google.com.gi/search*"
          "https://www.google.gl/search*"
          "https://www.google.gm/search*"
          "https://www.google.gr/search*"
          "https://www.google.com.gt/search*"
          "https://www.google.gy/search*"
          "https://www.google.com.hk/search*"
          "https://www.google.hn/search*"
          "https://www.google.hr/search*"
          "https://www.google.ht/search*"
          "https://www.google.hu/search*"
          "https://www.google.co.id/search*"
          "https://www.google.ie/search*"
          "https://www.google.co.il/search*"
          "https://www.google.im/search*"
          "https://www.google.co.in/search*"
          "https://www.google.iq/search*"
          "https://www.google.is/search*"
          "https://www.google.it/search*"
          "https://www.google.je/search*"
          "https://www.google.com.jm/search*"
          "https://www.google.jo/search*"
          "https://www.google.co.jp/search*"
          "https://www.google.co.ke/search*"
          "https://www.google.com.kh/search*"
          "https://www.google.ki/search*"
          "https://www.google.kg/search*"
          "https://www.google.co.kr/search*"
          "https://www.google.com.kw/search*"
          "https://www.google.kz/search*"
          "https://www.google.la/search*"
          "https://www.google.com.lb/search*"
          "https://www.google.li/search*"
          "https://www.google.lk/search*"
          "https://www.google.co.ls/search*"
          "https://www.google.lt/search*"
          "https://www.google.lu/search*"
          "https://www.google.lv/search*"
          "https://www.google.com.ly/search*"
          "https://www.google.co.ma/search*"
          "https://www.google.md/search*"
          "https://www.google.me/search*"
          "https://www.google.mg/search*"
          "https://www.google.mk/search*"
          "https://www.google.ml/search*"
          "https://www.google.com.mm/search*"
          "https://www.google.mn/search*"
          "https://www.google.ms/search*"
          "https://www.google.com.mt/search*"
          "https://www.google.mu/search*"
          "https://www.google.mv/search*"
          "https://www.google.mw/search*"
          "https://www.google.com.mx/search*"
          "https://www.google.com.my/search*"
          "https://www.google.co.mz/search*"
          "https://www.google.com.na/search*"
          "https://www.google.com.ng/search*"
          "https://www.google.com.ni/search*"
          "https://www.google.ne/search*"
          "https://www.google.nl/search*"
          "https://www.google.no/search*"
          "https://www.google.com.np/search*"
          "https://www.google.nr/search*"
          "https://www.google.nu/search*"
          "https://www.google.co.nz/search*"
          "https://www.google.com.om/search*"
          "https://www.google.com.pa/search*"
          "https://www.google.com.pe/search*"
          "https://www.google.com.pg/search*"
          "https://www.google.com.ph/search*"
          "https://www.google.com.pk/search*"
          "https://www.google.pl/search*"
          "https://www.google.pn/search*"
          "https://www.google.com.pr/search*"
          "https://www.google.ps/search*"
          "https://www.google.pt/search*"
          "https://www.google.com.py/search*"
          "https://www.google.com.qa/search*"
          "https://www.google.ro/search*"
          "https://www.google.ru/search*"
          "https://www.google.rw/search*"
          "https://www.google.com.sa/search*"
          "https://www.google.com.sb/search*"
          "https://www.google.sc/search*"
          "https://www.google.se/search*"
          "https://www.google.com.sg/search*"
          "https://www.google.sh/search*"
          "https://www.google.si/search*"
          "https://www.google.sk/search*"
          "https://www.google.com.sl/search*"
          "https://www.google.sn/search*"
          "https://www.google.so/search*"
          "https://www.google.sm/search*"
          "https://www.google.sr/search*"
          "https://www.google.st/search*"
          "https://www.google.com.sv/search*"
          "https://www.google.td/search*"
          "https://www.google.tg/search*"
          "https://www.google.co.th/search*"
          "https://www.google.com.tj/search*"
          "https://www.google.tl/search*"
          "https://www.google.tm/search*"
          "https://www.google.tn/search*"
          "https://www.google.to/search*"
          "https://www.google.com.tr/search*"
          "https://www.google.tt/search*"
          "https://www.google.com.tw/search*"
          "https://www.google.co.tz/search*"
          "https://www.google.com.ua/search*"
          "https://www.google.co.ug/search*"
          "https://www.google.co.uk/search*"
          "https://www.google.com.uy/search*"
          "https://www.google.co.uz/search*"
          "https://www.google.com.vc/search*"
          "https://www.google.co.ve/search*"
          "https://www.google.vg/search*"
          "https://www.google.co.vi/search*"
          "https://www.google.com.vn/search*"
          "https://www.google.vu/search*"
          "https://www.google.ws/search*"
          "https://www.google.rs/search*"
          "https://www.google.co.za/search*"
          "https://www.google.co.zm/search*"
          "https://www.google.co.zw/search*"
          "https://www.google.cat/search*"
        ];
        platforms = platforms.all;
      };
    };
    "inkah" = buildFirefoxXpiAddon {
      pname = "inkah";
      version = "1.0.43";
      addonId = "{de5bbbad-7c53-468e-9d8d-9d737cf5ba81}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4042120/inkah-1.0.43.xpi";
      sha256 = "1288b01b67be6bd6930fb45b969ece86547bc696619754911f4183b5daa05d5a";
      meta = with lib;
      {
        homepage = "https://www.inkah.com";
        description = "Look up Chinese &amp; Korean words. Split sentences into their individual words. Learn while browsing the web by hovering words and learn from Youtube and Netflix with double subtitles.";
        license = {
          shortName = "inkah";
          fullName = "Inkah Terms of Service";
          url = "https://www.inkah.com/terms-of";
          free = false;
        };
        mozPermissions = [ "storage" "tabs" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "ipfs-companion" = buildFirefoxXpiAddon {
      pname = "ipfs-companion";
      version = "3.1.0";
      addonId = "ipfs-firefox-addon@lidel.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4172699/ipfs_companion-3.1.0.xpi";
      sha256 = "784f6d1e0497d86f1e42cfe7de8548b5cc28fabe80e50771d90f59ddf1b9d3c1";
      meta = with lib;
      {
        homepage = "https://github.com/ipfs/ipfs-companion";
        description = "Harness the power of IPFS in your browser";
        license = licenses.cc0;
        mozPermissions = [
          "idle"
          "tabs"
          "notifications"
          "proxy"
          "storage"
          "unlimitedStorage"
          "contextMenus"
          "clipboardWrite"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "ipvfoo" = buildFirefoxXpiAddon {
      pname = "ipvfoo";
      version = "2.18";
      addonId = "ipvfoo@pmarks.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4207472/ipvfoo-2.18.xpi";
      sha256 = "0621687101f24160b26fd12da3f1c299c706f98e724934d790ed7fe5e00cc265";
      meta = with lib;
      {
        homepage = "https://github.com/pmarks-net/ipvfoo";
        description = "Display the server IP address, with a realtime summary of IPv4, IPv6, and HTTPS information across all page elements.";
        license = licenses.asl20;
        mozPermissions = [
          "contextMenus"
          "storage"
          "webNavigation"
          "webRequest"
        ];
        platforms = platforms.all;
      };
    };
    "istilldontcareaboutcookies" = buildFirefoxXpiAddon {
      pname = "istilldontcareaboutcookies";
      version = "1.1.4";
      addonId = "idcac-pub@guus.ninja";
      url = "https://addons.mozilla.org/firefox/downloads/file/4216095/istilldontcareaboutcookies-1.1.4.xpi";
      sha256 = "cadeb24622d3b9a2b82bf4308242fd802546b126bb9dd14e1ea66f2aa2066795";
      meta = with lib;
      {
        homepage = "https://github.com/OhMyGuus/I-Dont-Care-About-Cookies";
        description = "Community version of the popular extension \"I don't care about cookies\"  \n\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/d899243c3222e303a4ac90833f850da61cdf8f7779e2685f60f657254302216d/https%3A//github.com/OhMyGuus/I-Dont-Care-About-Cookies\" rel=\"nofollow\">https://github.com/OhMyGuus/I-Dont-Care-About-Cookies</a>";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "storage"
          "http://*/*"
          "https://*/*"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
        ];
        platforms = platforms.all;
      };
    };
    "jabref" = buildFirefoxXpiAddon {
      pname = "jabref";
      version = "2.5";
      addonId = "@jabfox";
      url = "https://addons.mozilla.org/firefox/downloads/file/3898690/jabref-2.5.xpi";
      sha256 = "959f38cdf9fcc516261105947bbbf0356693b05a5e8024f2e9fd044566b120a1";
      meta = with lib;
      {
        homepage = "http://www.jabref.org/";
        description = "Browser extension for users of the bibliographic reference manager JabRef.\nIt automatically identifies and extracts bibliographic information on websites and sends them to JabRef with one click.";
        license = licenses.agpl3Plus;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "tabs"
          "webNavigation"
          "storage"
          "nativeMessaging"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "javascript-restrictor" = buildFirefoxXpiAddon {
      pname = "javascript-restrictor";
      version = "0.19";
      addonId = "jsr@javascriptrestrictor";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339678/javascript_restrictor-0.19.xpi";
      sha256 = "5cb1dfdb609fde9cdf35c7b669855bc4a2dcac0d5e3e0a4e219367a61c709e0b";
      meta = with lib;
      {
        homepage = "https://jshelter.org";
        description = "JShelter controls the APIs provided by the browser. The goal is to improve the privacy and security of the user running the extension.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "dns"
          "<all_urls>"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "joplin-web-clipper" = buildFirefoxXpiAddon {
      pname = "joplin-web-clipper";
      version = "2.11.2";
      addonId = "{8419486a-54e9-11e8-9401-ac9e17909436}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4094039/joplin_web_clipper-2.11.2.xpi";
      sha256 = "ed95819cd4ecab2c6d002debba8c333a7646274a51d4cf9b9da4a0385cb91a24";
      meta = with lib;
      {
        homepage = "https://joplinapp.org";
        description = "Capture and save web pages and screenshots from your browser to Joplin. The Joplin application is required to get this extension working - <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/e114587689ca9fbf9d43f2f1fe9ea7468a336e7649e1b8c2e49e0035bb30b3a9/https%3A//joplinapp.org\" rel=\"nofollow\">https://joplinapp.org</a>";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "tabs"
          "http://*/"
          "https://*/"
          "<all_urls>"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "js-search-extension" = buildFirefoxXpiAddon {
      pname = "js-search-extension";
      version = "0.1";
      addonId = "{479ec4ee-fd16-4f95-b172-dd39fbd921ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3718212/js_search_extension-0.1.xpi";
      sha256 = "07d68e168d7137434cf5096efed581daa836a31096b0ca3f39a76a58e08b3ff5";
      meta = with lib;
      {
        homepage = "https://js.extension.sh";
        description = "The ultimate search extension for Javascript!";
        mozPermissions = [ "tabs" ];
        platforms = platforms.all;
      };
    };
    "jump-cutter" = buildFirefoxXpiAddon {
      pname = "jump-cutter";
      version = "1.27.5";
      addonId = "jump-cutter@example.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4332321/jump_cutter-1.27.5.xpi";
      sha256 = "0fd49972e82d0e1ae58bc256688f204b8a71d2a77392b6146aa72999d75a0a26";
      meta = with lib;
      {
        description = "Watch lectures ~1.5x faster by fast-forwarding long pauses between sentences";
        license = licenses.agpl3Plus;
        mozPermissions = [ "storage" "scripting" "http://*/*" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "kagi-search" = buildFirefoxXpiAddon {
      pname = "kagi-search";
      version = "0.7.1";
      addonId = "search@kagi.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4307128/kagi_search_for_firefox-0.7.1.xpi";
      sha256 = "78c28702ebe56d920a64010f413540880065c45eae2ee58823941d7e1fd49059";
      meta = with lib;
      {
        homepage = "https://kagi.com";
        description = "A simple helper extension for setting Kagi as a default search engine, and automatically logging in to Kagi in private browsing windows.";
        license = licenses.mit;
        mozPermissions = [
          "cookies"
          "declarativeNetRequestWithHostAccess"
          "webRequest"
          "storage"
          "contextMenus"
        ];
        platforms = platforms.all;
      };
    };
    "keepa" = buildFirefoxXpiAddon {
      pname = "keepa";
      version = "4.19";
      addonId = "amptra@keepa.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4257674/keepa-4.19.xpi";
      sha256 = "7fe354647e4a4074812c272bd70d2fa59ee6fefe2c2228fc21f6c1f76619f283";
      meta = with lib;
      {
        homepage = "https://Keepa.com";
        description = "→ Price History charts \n→ Price Drop &amp; Availability Alerts\n→ Over 1 billion tracked products\n→ Supports Amazon .com | .co.uk | .de | .co.jp | .fr | .ca | .it | .es | .in | .mx";
        license = {
          shortName = "keepa";
          fullName = "License for Keepa.com - Amazon Price Tracker";
          url = "https://addons.mozilla.org/en-CA/firefox/addon/keepa/license/";
          free = false;
        };
        mozPermissions = [
          "notifications"
          "cookies"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "contextMenus"
          "*://*.keepa.com/*"
          "*://*.amazon.com/*"
          "*://*.amzn.com/*"
          "*://*.amazon.co.uk/*"
          "*://*.amazon.de/*"
          "*://*.amazon.fr/*"
          "*://*.amazon.it/*"
          "*://*.amazon.ca/*"
          "*://*.amazon.com.mx/*"
          "*://*.amazon.es/*"
          "*://*.amazon.cn/*"
          "*://*.amazon.co.jp/*"
          "*://*.amazon.in/*"
          "*://*.amazon.com.br/*"
          "*://*.amazon.nl/*"
          "*://*.amazon.com.au/*"
        ];
        platforms = platforms.all;
      };
    };
    "keepass-helper" = buildFirefoxXpiAddon {
      pname = "keepass-helper";
      version = "1.4resigned1";
      addonId = "{e56fa932-ad2c-4cfa-b0d7-a35db1d9b0f6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4273653/keepass_helper_url_in_title-1.4resigned1.xpi";
      sha256 = "8811193376573323610d0c1bd043c3977b6fa15fd804b37b0c4749aa9aed1fab";
      meta = with lib;
      {
        description = "Puts a hostname or a URL in the window title.\nIt does not modify the title of a tab, just the window title.\nIt does not inject any JavaScript code to a website, so it can't corrupt, nor can it be corrupted by it.";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "keepassxc-browser" = buildFirefoxXpiAddon {
      pname = "keepassxc-browser";
      version = "1.9.2";
      addonId = "keepassxc-browser@keepassxc.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4335111/keepassxc_browser-1.9.2.xpi";
      sha256 = "cbc085f0e1275d81af22e12fbc9627381d8eb891998a5ebbf5bc198f8d79a0bf";
      meta = with lib;
      {
        homepage = "https://keepassxc.org/";
        description = "Official browser plugin for the KeePassXC password manager (<a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/aebde84f385b73661158862b419dd43b46ac4c22bea71d8f812030e93d0e52d5/https%3A//keepassxc.org\">https://keepassxc.org</a>).";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "contextMenus"
          "cookies"
          "nativeMessaging"
          "notifications"
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "https://*/*"
          "http://*/*"
          "https://api.github.com/"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "keybase" = buildFirefoxXpiAddon {
      pname = "keybase";
      version = "1.10.17resigned1";
      addonId = "keybase@keybase.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272716/keybase_for_firefox-1.10.17resigned1.xpi";
      sha256 = "b401ae32963446ad03a37d4e57619e785c74b1522e85430176765117064edd46";
      meta = with lib;
      {
        homepage = "https://keybase.io/docs/extension";
        description = "A secure chat button for every profile.";
        license = licenses.bsd2;
        mozPermissions = [
          "activeTab"
          "contextMenus"
          "declarativeContent"
          "nativeMessaging"
          "storage"
          "https://reddit.com/*"
          "https://*.reddit.com/*"
          "https://twitter.com/*"
          "https://www.facebook.com/*"
          "https://github.com/*"
          "https://news.ycombinator.com/user*"
          "https://keybase.io/*"
        ];
        platforms = platforms.all;
      };
    };
    "kristofferhagen-nord-theme" = buildFirefoxXpiAddon {
      pname = "kristofferhagen-nord-theme";
      version = "2.0";
      addonId = "{e410fec2-1cbd-4098-9944-e21e708418af}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3365523/kristofferhagen_nord_theme-2.0.xpi";
      sha256 = "60b123e10d4e99deed1c4414ac784664ae5e0e0c196cd8610c468f2fa116c935";
      meta = with lib;
      {
        homepage = "https://github.com/kristofferhagen/firefox-nord-theme";
        description = "Firefox theme inspired by <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/276dc50c9e2710aa17b441df1ee87a9f5f023f5ded676ddd689d8f998d92713a/https%3A//www.nordtheme.com/\" rel=\"nofollow\">https://www.nordtheme.com/</a>";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "laboratory-by-mozilla" = buildFirefoxXpiAddon {
      pname = "laboratory-by-mozilla";
      version = "3.0.8";
      addonId = "1b2383b324c8520974ee097e46301d5ca4e076de387c02886f1c6b1503671586@pokeinthe.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3716439/laboratory_by_mozilla-3.0.8.xpi";
      sha256 = "b75b09012587686df87afef671bf9f0e27a9812e94781d425032a36f38a5aba2";
      meta = with lib;
      {
        homepage = "https://github.com/april/laboratory";
        description = "Because good website security shouldn't only be available to mad scientists! Laboratory is a WebExtension that helps you generate a Content Security Policy (CSP) header for your website.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "ftp://*/*"
          "http://*/*"
          "https://*/*"
          "ws://*/*"
          "wss://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "languagetool" = buildFirefoxXpiAddon {
      pname = "languagetool";
      version = "8.11.7";
      addonId = "languagetool-webextension@languagetool.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337379/languagetool-8.11.7.xpi";
      sha256 = "60a3564a300188fd9066e3f331f0350aabbe468a8de6a835d03654c18712afae";
      meta = with lib;
      {
        homepage = "https://languagetool.org";
        description = "With this extension you can check text with the free style and grammar checker LanguageTool. It finds many errors that a simple spell checker cannot detect, like mixing up there/their, a/an, or repeating a word.";
        license = {
          shortName = "languagetool";
          fullName = "Custom License for LanguageTool";
          url = "https://languagetool.org/legal/";
          free = false;
        };
        mozPermissions = [
          "activeTab"
          "storage"
          "contextMenus"
          "alarms"
          "http://*/*"
          "https://*/*"
          "file:///*"
          "*://docs.google.com/document/*"
          "*://languagetool.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "lastpass-password-manager" = buildFirefoxXpiAddon {
      pname = "lastpass-password-manager";
      version = "4.127.0.1";
      addonId = "support@lastpass.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4246455/lastpass_password_manager-4.127.0.1.xpi";
      sha256 = "225c323fbd862a904a7c1b364a1f5beca792f8a5fa1deca0e9298b0cad7721bf";
      meta = with lib;
      {
        homepage = "https://lastpass.com/";
        description = "LastPass, an award-winning password manager, saves your passwords and gives you secure access from every computer and mobile device.";
        license = {
          shortName = "unfree";
          fullName = "Unfree";
          url = "https://addons.mozilla.org/en-US/firefox/addon/lastpass-password-manager/license/";
          free = false;
        };
        mozPermissions = [
          "tabs"
          "idle"
          "notifications"
          "contextMenus"
          "storage"
          "nativeMessaging"
          "privacy"
          "webRequest"
          "webNavigation"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
          "file:///*"
          "https://lastpass.com/acctsiframe.php*"
          "https://lastpass.eu/acctsiframe.php*"
          "https://lastpass.com/vault/*"
          "https://lastpass.com/?ac=1*"
          "https://lastpass.com/recover.php*"
          "https://lastpass.eu/recover.php*"
          "https://www.lastpass.com/create-account/success*"
          "https://lastpass.com/*"
          "https://backoffice.lastpass.com/*"
          "https://lastpass.com/update_phone.php*"
          "https://lastpass.com/misc_challenge.php*"
          "https://lastpass.com/?securitychallenge=1*"
          "https://lastpass.com/delete_account.php*"
          "https://lastpass.com/otp.php*"
          "https://lastpass.com/enterprise_options.php*"
          "https://lastpass.com/?&ac=1*"
          "https://lastpass.com/enterprise_users.php*"
          "https://lastpass.com/misc_login.php*"
          "https://lastpass.com/index.php*"
          "https://lastpass.eu/update_phone.php*"
          "https://lastpass.eu/misc_challenge.php*"
          "https://lastpass.eu/?securitychallenge=1*"
          "https://lastpass.eu/delete_account.php*"
          "https://lastpass.eu/otp.php*"
          "https://lastpass.eu/enterprise_options.php*"
          "https://lastpass.eu/?&ac=1*"
          "https://lastpass.eu/?ac=1*"
          "https://lastpass.eu/vault/*"
          "https://lastpass.eu/enterprise_users.php*"
          "https://lastpass.eu/misc_login.php*"
          "https://lastpass.eu/index.php*"
          "https://backoffice.lastpass.com/acctsiframe.php*"
          "https://backoffice.lastpass.com/update_phone.php*"
          "https://backoffice.lastpass.com/misc_challenge.php*"
          "https://backoffice.lastpass.com/?securitychallenge=1*"
          "https://backoffice.lastpass.com/delete_account.php*"
          "https://backoffice.lastpass.com/otp.php*"
          "https://backoffice.lastpass.com/enterprise_options.php*"
          "https://backoffice.lastpass.com/?&ac=1*"
          "https://backoffice.lastpass.com/?ac=1*"
          "https://backoffice.lastpass.com/vault/*"
          "https://backoffice.lastpass.com/enterprise_users.php*"
          "https://backoffice.lastpass.com/misc_login.php*"
          "https://backoffice.lastpass.com/index.php*"
        ];
        platforms = platforms.all;
      };
    };
    "leechblock-ng" = buildFirefoxXpiAddon {
      pname = "leechblock-ng";
      version = "1.6.5";
      addonId = "leechblockng@proginosko.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4311899/leechblock_ng-1.6.5.xpi";
      sha256 = "feda43f0197d2fa5b372c27a2307789184ee7feccf8b9692396c51f97229033b";
      meta = with lib;
      {
        homepage = "https://www.proginosko.com/leechblock/";
        description = "LeechBlock NG is a simple productivity tool designed to block those time-wasting sites that can suck the life out of your working day. All you need to do is specify which sites to block and when to block them.";
        license = licenses.mpl20;
        mozPermissions = [
          "alarms"
          "downloads"
          "history"
          "menus"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "lesspass" = buildFirefoxXpiAddon {
      pname = "lesspass";
      version = "9.6.9";
      addonId = "contact@lesspass.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4051050/lesspass-9.6.9.xpi";
      sha256 = "8efda879b3a7d6d2ec7777da20520c1427bced622ae0ea74a4562672f2f47d73";
      meta = with lib;
      {
        homepage = "https://github.com/lesspass/lesspass";
        description = "Use LessPass add-on to generate complex passwords and log in  automatically to all your sites";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" ];
        platforms = platforms.all;
      };
    };
    "libredirect" = buildFirefoxXpiAddon {
      pname = "libredirect";
      version = "2.9.1";
      addonId = "7esoorv3@alefvanoon.anonaddy.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340831/libredirect-2.9.1.xpi";
      sha256 = "89864e121d42eb7351ee2378979f52069871eeb7035ab9f878fc4b74f1bee7ea";
      meta = with lib;
      {
        homepage = "https://libredirect.github.io";
        description = "Redirects YouTube, Twitter, TikTok... requests to alternative privacy friendly frontends.";
        license = licenses.gpl3;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "storage"
          "clipboardWrite"
          "contextMenus"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "limit-limit-distracting-sites" = buildFirefoxXpiAddon {
      pname = "limit-limit-distracting-sites";
      version = "0.1.4";
      addonId = "{26ebede3-10ce-443c-bb0e-7f490cad0ec8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3531148/limit_limit_distracting_sites-0.1.4.xpi";
      sha256 = "2e56919cab89815e80e4f0119d950e542697eb0b8dc1d63bfb9e34ccc80ad0bf";
      meta = with lib;
      {
        homepage = "https://freedom.to";
        description = "Limit your time spent on distracting sites. Limit is an extension that allows you to set time limits for distracting websites.";
        license = {
          shortName = "unfree";
          fullName = "Unfree";
          url = "https://freedom.to/terms";
          free = false;
        };
        mozPermissions = [
          "tabs"
          "activeTab"
          "storage"
          "idle"
          "notifications"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "lingq-importer2" = buildFirefoxXpiAddon {
      pname = "lingq-importer2";
      version = "2.2.14";
      addonId = "{e84c7711-c738-409a-879d-3f20cb087563}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339517/lingq_importer2-2.2.14.xpi";
      sha256 = "fd904a4ef3788f5fadd1c863fbaabc4650aa4a121450fd0ea0d5e919935b13a8";
      meta = with lib;
      {
        homepage = "https://www.lingq.com/";
        description = "Automatically import foreign language pages, videos, movies from the web &amp; study them with LingQ's web &amp; mobile language learning apps.";
        license = licenses.gpl3;
        mozPermissions = [
          "https://*.nflxso.net/*"
          "https://*.nflxvideo.net/*"
          "https://*.netflix.com/*"
          "https://*.youtube.com/*"
          "https://*.lingq.com/*"
          "webRequest"
          "activeTab"
          "cookies"
          "storage"
          "scripting"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "link-cleaner" = buildFirefoxXpiAddon {
      pname = "link-cleaner";
      version = "1.6resigned1";
      addonId = "{6d85dea2-0fb4-4de3-9f8c-264bce9a2296}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272011/link_cleaner-1.6resigned1.xpi";
      sha256 = "16dbaf948c31ed586e64301d5809d7b11dd07014bf5edb5f7b1b4bfa30d40ff0";
      meta = with lib;
      {
        homepage = "https://github.com/idlewan/link_cleaner";
        description = "Clean URLs that are about to be visited:\n- removes utm_* parameters\n- on item pages of aliexpress and amazon, removes tracking parameters\n- skip redirect pages of facebook, steam and reddit";
        license = licenses.gpl3;
        mozPermissions = [ "<all_urls>" "webRequest" "webRequestBlocking" ];
        platforms = platforms.all;
      };
    };
    "link-gopher" = buildFirefoxXpiAddon {
      pname = "link-gopher";
      version = "2.6.2";
      addonId = "linkgopher@oooninja.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4183832/link_gopher-2.6.2.xpi";
      sha256 = "66f9bb417854da5bc1d0174aa3bb81ecff61c11b043f54af17ad99e8d40ab969";
      meta = with lib;
      {
        homepage = "http://sites.google.com/site/linkgopher/";
        description = "Extracts all links from web page, sorts them, removes duplicates, and displays them in a new tab for inspection or copy and paste into other systems.";
        license = licenses.gpl3;
        mozPermissions = [ "scripting" ];
        platforms = platforms.all;
      };
    };
    "linkding-extension" = buildFirefoxXpiAddon {
      pname = "linkding-extension";
      version = "1.10.0";
      addonId = "{61a05c39-ad45-4086-946f-32adb0a40a9d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4304166/linkding_extension-1.10.0.xpi";
      sha256 = "39010d4a328506915b1479dd710553baad66773b9ff3951a49d047b15ba1e070";
      meta = with lib;
      {
        homepage = "https://github.com/sissbruecker/linkding-extension/";
        description = "Companion extension for the linkding bookmark manager";
        license = licenses.mit;
        mozPermissions = [ "tabs" "http://*/*" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "linkhints" = buildFirefoxXpiAddon {
      pname = "linkhints";
      version = "1.3.1";
      addonId = "linkhints@lydell.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3985677/linkhints-1.3.1.xpi";
      sha256 = "ca0d9ed8d52e3ab62a9d3d7c2be29ae30d22f2ecd37eff5b38e34c130d96711b";
      meta = with lib;
      {
        homepage = "https://lydell.github.io/LinkHints";
        description = "Click with your keyboard.";
        license = licenses.mit;
        mozPermissions = [ "<all_urls>" "storage" ];
        platforms = platforms.all;
      };
    };
    "localcdn" = buildFirefoxXpiAddon {
      pname = "localcdn";
      version = "2.6.72";
      addonId = "{b86e4813-687a-43e6-ab65-0bde4ab75758}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336546/localcdn_fork_of_decentraleyes-2.6.72.xpi";
      sha256 = "de15005831ca9f551b5aedbf0c29cbb2b872b548b59e6acd1ee0934179ba8d30";
      meta = with lib;
      {
        homepage = "https://www.localcdn.org";
        description = "Emulates remote frameworks (e.g. jQuery, Bootstrap, AngularJS) and delivers them as local resource. Prevents unnecessary 3rd party requests to Google, StackPath, MaxCDN and more. Prepared rules for uBlock Origin/uMatrix.";
        license = licenses.mpl20;
        mozPermissions = [
          "*://*/*"
          "privacy"
          "storage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "lovely-forks" = buildFirefoxXpiAddon {
      pname = "lovely-forks";
      version = "3.7.3";
      addonId = "github-forks-addon@musicallyut.in";
      url = "https://addons.mozilla.org/firefox/downloads/file/4257592/lovely_forks-3.7.3.xpi";
      sha256 = "ab9a444acbaa2bebf1bea88a1d41edd9f35208b05510522ab574fdf4cae3058d";
      meta = with lib;
      {
        homepage = "https://github.com/musically-ut/lovely-forks";
        description = "Show notable forks of Github projects.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "*://github.com/*" ];
        platforms = platforms.all;
      };
    };
    "mailvelope" = buildFirefoxXpiAddon {
      pname = "mailvelope";
      version = "5.2.0";
      addonId = "jid1-AQqSMBYb0a8ADg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4310662/mailvelope-5.2.0.xpi";
      sha256 = "833bffcb546cb6f0c193bd3246ec7f60ff80a8c0db4e1340a1db81b209045ee2";
      meta = with lib;
      {
        homepage = "https://www.mailvelope.com/";
        description = "Enhance your webmail provider with end-to-end encryption. Secure email communication based on the OpenPGP standard.";
        license = licenses.gpl3;
        mozPermissions = [
          "*://*/*"
          "dns"
          "identity"
          "nativeMessaging"
          "storage"
          "tabs"
          "webNavigation"
        ];
        platforms = platforms.all;
      };
    };
    "mal-sync" = buildFirefoxXpiAddon {
      pname = "mal-sync";
      version = "0.10.4";
      addonId = "{c84d89d9-a826-4015-957b-affebd9eb603}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340167/mal_sync-0.10.4.xpi";
      sha256 = "379e5b1bc90dd34bb785651aff3008b1f8aa9d88878f4f4e30b89f783d7504cf";
      meta = with lib;
      {
        homepage = "https://github.com/lolamtisch/MALSync";
        description = "MAL-Sync enables automatic episode tracking between MyAnimeList/Anilist/Kitsu/Simkl and multiple anime streaming websites.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "alarms"
          "notifications"
          "declarativeNetRequestWithHostAccess"
          "*://myanimelist.net/anime/*"
          "*://myanimelist.net/manga/*"
          "*://myanimelist.net/animelist/*"
          "*://myanimelist.net/mangalist/*"
          "*://myanimelist.net/anime.php?id=*"
          "*://myanimelist.net/manga.php?id=*"
          "*://myanimelist.net/character/*"
          "*://myanimelist.net/people/*"
          "*://myanimelist.net/search/*"
          "*://malsync.moe/mal/oauth*"
          "*://malsync.moe/anilist/oauth*"
          "*://malsync.moe/shikimori/oauth*"
          "*://anilist.co/*"
          "*://kitsu.app/*"
          "*://simkl.com/*"
          "*://malsync.moe/pwa*"
          "*://*.9anime.to/watch/*"
          "*://*.9anime.to/watch2gether/*"
          "*://*.9anime.ru/watch/*"
          "*://*.9anime.ru/watch2gether/*"
          "*://*.9anime.live/watch/*"
          "*://*.9anime.live/watch2gether/*"
          "*://*.9anime.one/watch/*"
          "*://*.9anime.one/watch2gether/*"
          "*://*.9anime.page/watch/*"
          "*://*.9anime.page/watch2gether/*"
          "*://*.9anime.video/watch/*"
          "*://*.9anime.video/watch2gether/*"
          "*://*.9anime.life/watch/*"
          "*://*.9anime.life/watch2gether/*"
          "*://*.9anime.love/watch/*"
          "*://*.9anime.love/watch2gether/*"
          "*://*.9anime.tv/watch/*"
          "*://*.9anime.tv/watch2gether/*"
          "*://*.9anime.app/watch/*"
          "*://*.9anime.app/watch2gether/*"
          "*://*.9anime.at/watch/*"
          "*://*.9anime.at/watch2gether/*"
          "*://*.9anime.bar/watch/*"
          "*://*.9anime.bar/watch2gether/*"
          "*://*.9anime.pw/watch/*"
          "*://*.9anime.pw/watch2gether/*"
          "*://*.9anime.cz/watch/*"
          "*://*.9anime.cz/watch2gether/*"
          "*://*.9anime.ws/watch/*"
          "*://*.9anime.ws/watch2gether/*"
          "*://*.9anime.id/watch/*"
          "*://*.9anime.id/watch2gether/*"
          "*://*.9anime.center/watch/*"
          "*://*.9anime.center/watch2gether/*"
          "*://*.9anime.club/watch/*"
          "*://*.9anime.club/watch2gether/*"
          "*://*.9anime.pl/watch/*"
          "*://*.9anime.pl/watch2gether/*"
          "*://*.9anime.gs/watch/*"
          "*://*.9anime.gs/watch2gether/*"
          "*://*.9anime.ph/watch/*"
          "*://*.9anime.ph/watch2gether/*"
          "*://*.aniwave.to/watch/*"
          "*://*.aniwave.to/watch2gether/*"
          "*://*.aniwave.bz/watch/*"
          "*://*.aniwave.bz/watch2gether/*"
          "*://*.aniwave.ws/watch/*"
          "*://*.aniwave.ws/watch2gether/*"
          "*://*.aniwave.vc/watch/*"
          "*://*.aniwave.vc/watch2gether/*"
          "*://*.aniwave.li/watch/*"
          "*://*.aniwave.li/watch2gether/*"
          "*://*.crunchyroll.com/*"
          "*://mangadex.org/*"
          "*://*.gogoanime.tv/*"
          "*://*.gogoanime.io/*"
          "*://*.gogoanime.in/*"
          "*://*.gogoanime.se/*"
          "*://*.gogoanime.sh/*"
          "*://*.gogoanime.video/*"
          "*://*.gogoanime.movie/*"
          "*://*.gogoanime.so/*"
          "*://*.gogoanime.ai/*"
          "*://*.gogoanime.vc/*"
          "*://*.gogoanime.pe/*"
          "*://*.gogoanime.wiki/*"
          "*://*.gogoanime.cm/*"
          "*://*.gogoanime.film/*"
          "*://*.gogoanime.fi/*"
          "*://*.gogoanime.gg/*"
          "*://*.gogoanime.sk/*"
          "*://*.gogoanime.lu/*"
          "*://*.gogoanime.tel/*"
          "*://*.gogoanime.ee/*"
          "*://*.gogoanime.dk/*"
          "*://*.gogoanime.ar/*"
          "*://*.gogoanime.bid/*"
          "*://*.gogoanimes.co/*"
          "*://*.animego.to/*"
          "*://*.gogoanime.gr/*"
          "*://*.gogoanime.llc/*"
          "*://*.gogoanime.cl/*"
          "*://*.gogoanime.hu/*"
          "*://*.gogoanime.vet/*"
          "*://*.gogoanimehd.to/*"
          "*://*.gogoanime3.net/*"
          "*://*.gogoanimehd.io/*"
          "*://*.anitaku.to/*"
          "*://*.anitaku.so/*"
          "*://*.gogoanime3.co/*"
          "*://*.anitaku.pe/*"
          "*://*.www.turkanime.tv/video/*"
          "*://*.www.turkanime.tv/anime/*"
          "*://*.www.turkanime.net/video/*"
          "*://*.www.turkanime.net/anime/*"
          "*://*.www.turkanime.co/video/*"
          "*://*.www.turkanime.co/anime/*"
          "*://app.emby.media/*"
          "*://app.emby.tv/*"
          "*://app.plex.tv/*"
          "*://www.netflix.com/*"
          "*://animepahe.com/play/*"
          "*://animepahe.com/anime/*"
          "*://animepahe.ru/play/*"
          "*://animepahe.ru/anime/*"
          "*://animepahe.org/play/*"
          "*://animepahe.org/anime/*"
          "*://*.animeflv.net/anime/*"
          "*://*.animeflv.net/ver/*"
          "*://jkanime.net/*"
          "*://proxer.me/*"
          "*://proxer.net/*"
          "*://*.aniflix.tv/*"
          "*://*.aniflix.cc/*"
          "*://*.kaas.am/*"
          "*://*.kaas.ro/*"
          "*://*.kaas.to/*"
          "*://*.kickassanime.ro/*"
          "*://*.kickassanime.am/*"
          "*://*.kickassanimes.io/*"
          "*://*.kickassanime.mx/*"
          "*://shinden.pl/episode/*"
          "*://shinden.pl/series/*"
          "*://shinden.pl/titles/*"
          "*://shinden.pl/epek/*"
          "*://voiranime.com/*"
          "*://v2.voiranime.com/*"
          "*://v3.voiranime.com/*"
          "*://v4.voiranime.com/*"
          "*://v5.voiranime.com/*"
          "*://www.viz.com/*"
          "*://manganato.com/*"
          "*://readmanganato.com/*"
          "*://chapmanganato.com/*"
          "*://chapmanganato.to/*"
          "*://*.neko-sama.fr/*"
          "*://animecat.net/*"
          "*://www.animezone.pl/odcinki/*"
          "*://www.animezone.pl/odcinek/*"
          "*://www.animezone.pl/anime/*"
          "*://anime-odcinki.pl/anime/*"
          "*://serimanga.com/*"
          "*://mangadenizi.com/*"
          "*://*.mangadenizi.net/*"
          "*://moeclip.com/*"
          "*://mangalivre.net/*"
          "*://tmofans.com/*"
          "*://lectortmo.com/*"
          "*://visortmo.com/*"
          "*://gastronomiaporpaises.com/*"
          "*://releasingcars.com/*"
          "*://mundorecetascuriosas.com/*"
          "*://lupitaalosfogones.com/*"
          "*://cocinarporelmundo.com/*"
          "*://disfrutacocina.com/*"
          "*://recetascuriosas.com/*"
          "*://lacocinadelupita.com/*"
          "*://mynewsrecipes.com/*"
          "*://recipestravelworld.com/*"
          "*://recipestraveling.com/*"
          "*://recetaspaises.com/*"
          "*://worldrecipesu.com/*"
          "*://techinroll.com/*"
          "*://vsrecipes.com/*"
          "*://mygamesinfo.com/*"
          "*://gamesnk.com/*"
          "*://otakuworldgames.com/*"
          "*://animalcanine.com/*"
          "*://cook2love.com/*"
          "*://wtechnews.com/*"
          "*://animationforyou.com/*"
          "*://fanaticmanga.com/*"
          "*://mistermanga.com/*"
          "*://enginepassion.com/*"
          "*://motornk.com/*"
          "*://recipesnk.com/*"
          "*://panicmanga.com/*"
          "*://worldmangas.com/*"
          "*://anitoc.com/*"
          "*://cookerready.com/*"
          "*://cooker2love.com/*"
          "*://infopetworld.com/*"
          "*://infogames2you.com/*"
          "*://almtechnews.com/*"
          "*://animation2you.com/*"
          "*://recipesdo.com/*"
          "*://vgmotor.com/*"
          "*://myotakuinfo.com/*"
          "*://otakworld.com/*"
          "*://cookermania.com/*"
          "*://motorbakery.com/*"
          "*://recipesist.com/*"
          "*://motorpi.com/*"
          "*://dariusmotor.com/*"
          "*://recipesaniki.com/*"
          "*://cocinaconlupita.com/*"
          "*://recetasdelupita.com/*"
          "*://gamesxo.com/*"
          "*://fitfooders.com/*"
          "*://checkingcars.com/*"
          "*://keepfooding.com/*"
          "*://feelthecook.com/*"
          "*://recetchef.com/*"
          "*://motoroilblood.com/*"
          "*://anisurion.com/*"
          "*://recipescoaching.com/*"
          "*://anitirion.com/*"
          "*://cookernice.com/*"
          "*://animalsside.com/*"
          "*://paleomotor.com/*"
          "*://otakunice.com/*"
          "*://sucrecipes.com/*"
          "*://recetasviaje.com/*"
          "*://animalslegacy.com/*"
          "*://worldcuisineis.com/*"
          "*://eligeunnombre.com/*"
          "*://cyclingresolution.com/*"
          "*://comollamarle.com/*"
          "*://fashionandcomplements.com/*"
          "*://gamesnacion.com/*"
          "*://topamotor.com/*"
          "*://motorwithpassion.com/*"
          "*://gamesnewses.com/*"
          "*://technewsroll.com/*"
          "*://infonombre.com/*"
          "*://animationdraw.com/*"
          "*://recetasdegina.com/*"
          "*://mislyfashion.com/*"
          "*://techingro.com/*"
          "*://motoralm.com/*"
          "*://tocanimation.com/*"
          "*://letsmotorgo.com/*"
          "*://mangaplus.shueisha.co.jp/*"
          "*://*.japscan.ws/*"
          "*://*.animesvision.com.br/*"
          "*://*.animesvision.biz/*"
          "*://*.animes.vision/*"
          "*://www.hulu.com/*"
          "*://www.hidive.com/*"
          "*://*.primevideo.com/*"
          "*://mangakatana.com/manga/*"
          "*://*.manga4life.com/*"
          "*://bato.to/*"
          "*://mangapark.net/*"
          "*://animeshouse.net/episodio/*"
          "*://animeshouse.net/filme/*"
          "*://animexin.vip/*"
          "*://animexin.xyz/*"
          "*://animexinax.com/*"
          "*://monoschinos.com/*"
          "*://monoschinos2.com/*"
          "*://smotret-anime.net/catalog/*"
          "*://anime365.ru/catalog/*"
          "*://anime-365.ru/catalog/*"
          "*://animefire.net/*"
          "*://animefire.plus/*"
          "*://otakufr.co/*"
          "*://otakufr.cc/*"
          "*://mangatx.com/*"
          "*://manhuafast.com/*"
          "*://tranimeizle.net/*"
          "*://www.tranimeizle.net/*"
          "*://tranimeizle.co/*"
          "*://www.tranimeizle.co/*"
          "*://*.animestreamingfr.fr/*"
          "*://furyosociety.com/*"
          "*://www.animeid.tv/*"
          "*://myanimelist.net/anime/*/*/episode/*"
          "*://*.animeunity.it/anime/*"
          "*://*.animeunity.tv/anime/*"
          "*://*.animeunity.cc/anime/*"
          "*://*.animeunity.to/anime/*"
          "*://*.mangahere.cc/manga/*"
          "*://*.fanfox.net/manga/*"
          "*://*.mangafox.la/manga/*"
          "*://desu-online.pl/*"
          "*://wuxiaworld.site/novel/*"
          "*://lscomic.com/*"
          "*://en.leviatanscans.com/*"
          "*://reaperscans.com/*"
          "*://lynxscans.com/*"
          "*://zeroscans.com/*"
          "*://reader.deathtollscans.net/*"
          "*://manhuaplus.com/manga*"
          "*://readm.org/manga/*"
          "*://www.readm.org/manga/*"
          "*://*.readm.today/manga/*"
          "*://tioanime.com/anime/*"
          "*://tioanime.com/ver/*"
          "*://yugenanime.tv/*"
          "*://yugenani.me/*"
          "*://yugen.to/*"
          "*://*.mangasee123.com/manga*"
          "*://*.mangasee123.com/read-online*"
          "*://*.okanime.com/animes/*"
          "*://*.okanime.com/movies/*"
          "*://*.okanime.tv/animes/*"
          "*://*.okanime.tv/movies/*"
          "*://bs.to/serie/*"
          "*://asura.gg/*"
          "*://*.asurascans.com/*"
          "*://*.asuracomics.com/*"
          "*://asuratoon.com/*"
          "*://*.asuracomic.net/*"
          "*://an1me.nl/*"
          "*://an1me.to/*"
          "*://mangajar.com/manga/*"
          "*://mangajar.pro/manga/*"
          "*://*.otakustv.com/anime/*"
          "*://demo.komga.org/*"
          "*://animewho.com/*"
          "*://animesuge.io/anime/*"
          "*://animesuge.to/anime/*"
          "*://toonily.com/webtoon/*"
          "*://fumetsu.pl/anime/*"
          "*://frixysubs.pl/*"
          "*://guya.moe/*"
          "*://cubari.moe/*"
          "*://guya.cubari.moe/*"
          "*://mangahub.io/*"
          "*://comick.app/*"
          "*://comick.ink/*"
          "*://comick.cc/*"
          "*://comick.io/*"
          "*://www.bentomanga.com/*"
          "*://bentomanga.com/*"
          "*://mangasushi.net/manga*"
          "*://tritinia.com/manga*"
          "*://readmanhua.net/manga*"
          "*://flamecomics.com/*"
          "*://immortalupdates.com/manga*"
          "*://aniwatch.to/*"
          "*://aniwatch.nz/*"
          "*://aniwatch.se/*"
          "*://hianime.to/*"
          "*://kitsune.tv/*"
          "*://beta.kitsune.tv/*"
          "*://lhtranslation.net/manga*"
          "*://mangas-origines.fr/oeuvre*"
          "*://*.bluesolo.org/manga/*"
          "*://disasterscans.com/*"
          "*://dynasty-scans.com/*"
          "*://aniworld.to/*"
          "*://betteranime.net/anime/*"
          "*://*.manga.bilibili.com/*"
          "*://mangareader.to/*"
          "*://animeonsen.xyz/*"
          "*://www.animeonsen.xyz/*"
          "*://*.animetoast.cc/*"
          "*://luminousscans.com/*"
          "*://luminousscans.gg/*"
          "*://luminous-scans.com/*"
          "*://*.animeworld.tv/play/*"
          "*://*.animeworld.so/play/*"
          "*://mangabuddy.com/*"
          "*://hivetoon.com/*"
          "*://void-scans.com/*"
          "*://vvww.toonanime.cc/*"
          "*://*.adkami.com/*"
          "*://kaguya.app/*"
          "*://hdrezka.ag/animation/*"
          "*://sovetromantica.com/anime/*"
          "*://ani.wtf/anime/*"
          "*://animationdigitalnetwork.fr/*"
          "*://animationdigitalnetwork.de/*"
          "*://animationdigitalnetwork.com/*"
          "*://aniyan.net/*"
          "*://docchi.pl/*"
          "*://franime.fr/*"
          "*://fmteam.fr/*"
          "*://www.animelon.com/*"
          "*://animelon.com/*"
          "*://anime-sama.fr/*"
          "*://mangafire.to/*"
          "*://projectsuki.com/*"
          "*://animebuff.ru/anime/*"
          "*://animeonegai.com/*"
          "*://www.animeonegai.com/*"
          "*://*.animeko.co/*"
          "*://animego.org/anime/*"
          "*://animeflix.gg/*"
          "*://animeflix.li/*"
          "*://*.luciferdonghua.in/*"
          "*://*.luciferdonghua.co.in/*"
          "*://neoxscans.com/*"
          "*://*.neoxscans.net/*"
          "*://*.anix.to/*"
          "*://*.anix.ac/*"
          "*://*.anix.vc/*"
          "*://www.hinatasoul.com/anime*"
          "*://www.hinatasoul.com/videos/*"
          "*://ogladajanime.pl/*"
          "*://hachi.moe/*"
          "*://witanime.sbs/*"
          "*://witanime.pics/*"
          "*://suwayomi-webui-preview.github.io/*"
          "*://manhuaus.com/*"
          "*://*.taiyo.moe/*"
          "*://*.animesonline.in/*"
          "*://*.miruro.tv/*"
          "*://*.miruro.online/*"
          "*://latanime.org/*"
          "*://*.mangaread.org/manga/*"
          "*://bakashi.tv/*"
          "*://templescan.net/*"
          "*://*.openload.co/*"
          "*://*.openload.pw/*"
          "*://*.streamango.com/*"
          "*://*.mp4upload.com/*"
          "*://*.mcloud.to/*"
          "*://*.mcloud.bz/*"
          "*://*.static.crunchyroll.com/*"
          "*://*.vidstreaming.io/*"
          "*://*.vidstreaming.link/*"
          "*://*.xstreamcdn.com/*"
          "*://*.gcloud.live/*"
          "*://*.oload.tv/*"
          "*://*.mail.ru/*"
          "*://*.myvi.ru/*"
          "*://*.myvi.tv/*"
          "*://*.sibnet.ru/*"
          "*://*.tune.pk/*"
          "*://*.tune.ke/*"
          "*://*.vimple.ru/*"
          "*://*.href.li/*"
          "*://*.vk.com/*"
          "*://*.cloudvideo.tv/*"
          "*://*.fembed.net/*"
          "*://*.fembed.com/*"
          "*://*.animeproxy.info/*"
          "*://*.feurl.com/*"
          "*://*.embedsito.com/v/*"
          "*://*.fcdn.stream/v/*"
          "*://*.fcdn.stream/e/*"
          "*://*.vaplayer.xyz/v/*"
          "*://*.vaplayer.xyz/e/*"
          "*://*.femax20.com/v/*"
          "*://*.femax20.com/e/*"
          "*://*.fplayer.info/*"
          "*://*.dutrag.com/*"
          "*://*.diasfem.com/*"
          "*://*.fembed-hd.com/*"
          "*://*.fembed9hd.com/*"
          "*://suzihaza.com/v/*"
          "*://vanfem.com/v/*"
          "*://*.youpload.co/*"
          "*://*.yourupload.com/*"
          "*://*.vidlox.me/*"
          "*://*.kwik.cx/*"
          "*://*.kwik.si/*"
          "*://*.mega.nz/*"
          "*://*.animeflv.net/*"
          "*://*.hqq.tv/*"
          "*://waaw.tv/*"
          "*://*.jkanime.net/*"
          "*://*.ok.ru/*"
          "*://*.novelplanet.me/*"
          "*://*.stream.proxer.me/*"
          "*://*.stream.proxer.net/*"
          "*://*.stream-service.proxer.me/*"
          "*://verystream.com/*"
          "*://*.animeultima.eu/e/*"
          "*://*.animeultima.eu/faststream/*"
          "*://*.animeultima.to/e/*"
          "*://*.animeultima.to/faststream/*"
          "*://*.vidoza.net/*"
          "*://gounlimited.to/*"
          "*://www.ani-stream.com/*"
          "*://animedaisuki.moe/embed/*"
          "*://www.dailymotion.com/embed/*"
          "*://vev.io/embed/*"
          "*://vev.red/embed/*"
          "*://jwpstream.com/jwps/yplayer.php*"
          "*://www.vaplayer.xyz/v/*"
          "*://vaplayer.me/*"
          "*://mp4.sh/embed/*"
          "*://embed.mystream.to/*"
          "*://*.bitchute.com/embed/*"
          "*://*.streamcherry.com/embed/*"
          "*://*.clipwatching.com/*"
          "*://*.flix555.com/*"
          "*://*.vshare.io/v/*"
          "*://ebd.cda.pl/*"
          "*://www.lycoris.cafe/*"
          "*://*.replay.watch/*"
          "*://*.playhydrax.com/*"
          "*://hydrax.net/*"
          "*://*.geoip.redirect-ads.com/*"
          "*://*.streamium.xyz/*"
          "*://kodik.info/*"
          "*://aniboom.one/*"
          "*://smotret-anime.net/translations/embed/*"
          "*://anime365.ru/translations/embed/*"
          "*://anime-365.ru/translations/embed/*"
          "*://*.pstream.net/e/*"
          "*://fusevideo.net/e/*"
          "*://fusevideo.io/e/*"
          "*://*.animefever.tv/embed/*"
          "*://*.haloani.ru/*"
          "*://*.moeclip.com/v/*"
          "*://*.moeclip.com/embed/*"
          "*://*.mixdrop.co/e/*"
          "*://*.mixdrop.to/e/*"
          "*://*.mdbekjwqa.pw/e/*"
          "*://*.mdfx9dc8n.net/e/*"
          "*://*.mdzsmutpcvykb.net/e/*"
          "*://*.mixdropjmk.pw/e/*"
          "*://*.mixdrop21.net/e/*"
          "*://*.mixdrop.si/e/*"
          "*://*.mixdrop.nu/e/*"
          "*://*.mixdrop.sx/e/*"
          "*://*.mixdrop.ms/e/*"
          "*://*.mixdrop.ps/e/*"
          "*://gdriveplayer.me/embed*"
          "*://sendvid.net/v/*"
          "*://sendvid.com/embed/*"
          "*://streamz.cc/*"
          "*://*.vidbm.com/embed-*"
          "*://*.vidbem.com/embed-*"
          "*://*.cloudhost.to/*/mediaplayer/*/_embed.php?*"
          "*://*.letsupload.co/*/mediaplayer/*/_embed.php?*"
          "*://streamtape.com/*"
          "*://streamtape.net/*"
          "*://streamtape.xyz/*"
          "*://streamtape.to/*"
          "*://strcloud.in/*"
          "*://strcloud.link/*"
          "*://streamta.pe/*"
          "*://strtape.tech/*"
          "*://strtapeadblock.club/*"
          "*://strtapeadblock.me/*"
          "*://streamta.site/*"
          "*://scloud.online/*"
          "*://strtpe.link/*"
          "*://stape.me/*"
          "*://stape.fun/*"
          "*://streamtapeadblock.art/*"
          "*://reproductor.monoschinos.com/*"
          "*://uptostream.com/iframe/*"
          "*://easyload.io/e/*"
          "*://*.googleusercontent.com/gadgets/*"
          "*://animedesu.pl/player/desu.php?v=*"
          "*://*.plyr.link/*"
          "*://v.vvid.cc/*"
          "*://*.okanime.com/cdn/*/embed/?*"
          "*://*.gogo-stream.com/*"
          "*://*.gogo-play.net/*"
          "*://*.gogo-play.tv/*"
          "*://*.streamani.net/*"
          "*://*.streamani.io/*"
          "*://*.goload.one/*"
          "*://*.goload.pro/*"
          "*://*.goload.io/*"
          "*://*.gogoplay1.com/*"
          "*://*.gogoplay2.com/*"
          "*://*.gogoplay4.com/*"
          "*://*.gogoplay5.com/*"
          "*://*.gogoplay.io/*"
          "*://*.gogohd.net/*"
          "*://*.gogohd.pro/*"
          "*://*.gembedhd.com/*"
          "*://*.playgo1.cc/*"
          "*://*.anihdplay.com/*"
          "*://*.playtaku.net/*"
          "*://*.playtaku.online/*"
          "*://*.gotaku1.com/*"
          "*://*.goone.pro/*"
          "*://*.embtaku.pro/*"
          "*://*.embtaku.com/*"
          "*://*.s3taku.com/*"
          "*://vivo.sx/embed/*"
          "*://play.api-web.site/*"
          "*://vidstream.pro/embed/*"
          "*://vidstream.pro/e/*"
          "*://vidstreamz.online/embed/*"
          "*://vidstreamz.online/e/*"
          "*://vizcloud.ru/embed/*"
          "*://vizcloud.ru/e/*"
          "*://vizcloud2.ru/embed/*"
          "*://vizcloud2.ru/e/*"
          "*://vizcloud.online/embed/*"
          "*://vizcloud.online/e/*"
          "*://vizstream.ru/embed/*"
          "*://vizstream.ru/e/*"
          "*://vizcloud.xyz/embed/*"
          "*://vizcloud.xyz/e/*"
          "*://vizcloud.cloud/embed/*"
          "*://vizcloud.cloud/e/*"
          "*://vizcloud.co/embed/*"
          "*://vizcloud.co/e/*"
          "*://vidplay.site/e/*"
          "*://vidplay.lol/e/*"
          "*://vidplay.online/e/*"
          "*://a9bfed0818.nl/e/*"
          "*://vid142.site/e/*"
          "*://vid1a52.site/e/*"
          "*://vid2a41.site/e/*"
          "*://streamsb.net/*"
          "*://streamsb.com/*"
          "*://sbembed.com/*"
          "*://sbembed1.com/*"
          "*://sbvideo.net/*"
          "*://sbplay.org/*"
          "*://sbplay.one/*"
          "*://sbplay1.com/*"
          "*://sbplay2.com/*"
          "*://embedsb.com/*"
          "*://watchsb.com/*"
          "*://sbplay2.xyz/*"
          "*://sbfull.com/e/*"
          "*://ssbstream.net/*"
          "*://streamsss.net/*"
          "*://sbanh.com/e/*"
          "*://sblongvu.com/e/*"
          "*://sbchill.com/e/*"
          "*://sbone.pro/e/*"
          "*://sbani.pro/e/*"
          "*://dood.to/*"
          "*://dood.watch/*"
          "*://doodstream.com/*"
          "*://dood.la/*"
          "*://*.dood.video/*"
          "*://dood.ws/e/*"
          "*://dood.sh/e/*"
          "*://dood.so/e/*"
          "*://dood.pm/e/*"
          "*://dood.wf/e/*"
          "*://dood.re/e/*"
          "*://dooood.com/e/*"
          "*://youtube.googleapis.com/embed/*drive.google.com*"
          "*://hdvid.tv/*"
          "*://vidfast.co/*"
          "*://supervideo.tv/*"
          "*://jetload.net/*"
          "*://saruch.co/*"
          "*://vidmoly.me/*"
          "*://vidmoly.to/*"
          "*://upstream.to/*"
          "*://abcvideo.cc/*"
          "*://aparat.cam/*"
          "*://www.aparat.com/video/video/embed/*"
          "*://vudeo.net/*"
          "*://voe.sx/e/*"
          "*://gamoneinterrupted.com/e/*"
          "*://crownmakermacaronicism.com/e/*"
          "*://generatesnitrosate.com/e/*"
          "*://yodelswartlike.com/e/*"
          "*://cigarlessarefy.com/e/*"
          "*://valeronevijao.com/e/*"
          "*://strawberriesporail.com/e/*"
          "*://timberwoodanotia.com/e/*"
          "*://phenomenalityuniform.com/e/*"
          "*://nonesnanking.com/e/*"
          "*://kathleenmemberhistory.com/e/*"
          "*://bradleyviewdoctor.com/e/*"
          "*://seanshowcould.com/e/*"
          "*://johntryopen.com/e/*"
          "*://morganoperationface.com/e/*"
          "*://brookethoughi.com/e/*"
          "*://jamesstartstudent.com/e/*"
          "*://ryanagoinvolve.com/e/*"
          "*://jasonresponsemeasure.com/e/*"
          "*://shannonpersonalcost.com/e/*"
          "*://brucevotewithin.com/e/*"
          "*://rebeccaneverbase.com/e/*"
          "*://loriwithinfamily.com/e/*"
          "*://vidoo.tv/*"
          "*://nxload.com/*"
          "*://videobin.co/*"
          "*://uqload.com/*"
          "*://evoload.io/*"
          "*://yugenani.me/e/*"
          "*://yugen.to/e/*"
          "*://yugenanime.ro/e/*"
          "*://yugenanime.tv/e/*"
          "*://kaa-play.me/*"
          "*://kaavid.com/*"
          "*://vidnethub.net/*"
          "*://vidco.pro/*"
          "*://*.animeshouse.net/gcloud/*"
          "*://*.animeshouse.net/playerBlue/*"
          "*://*.animeshouse.net/mp4/*"
          "*://*.animeshouse.net/ah-clp-new/*"
          "*://animato.me/embed/*"
          "*://kimanime.ru/AnimeIframe/*"
          "*://vidcloud.spb.ru/*"
          "*://*.streamhd.cc/*"
          "*://*.rapid-cloud.ru/*"
          "*://*.rapid-cloud.co/*"
          "*://videovard.sx/*"
          "*://videovard.to/*"
          "*://streamlare.com/e/*"
          "*://betteranime.net/player*"
          "*://streamzz.to/*"
          "*://protonvideo.to/iframe/*"
          "*://ninjastream.to/watch/*"
          "*://harajuku.pl/*"
          "*://vupload.com/*"
          "*://*.turkanime.net/player/*"
          "*://*.turkanime.co/player/*"
          "*://*.turkanime.co/embed/*"
          "*://play.cozyplayer.com/*"
          "*://odnoklassniki.ru/*"
          "*://myalucard.xyz/*"
          "*://uploads.mobi/*"
          "*://iframe.mediadelivery.net/embed/*"
          "*://*.yfvf.com/*"
          "*://waaw.to/*"
          "*://suzihaza.com/*"
          "*://*.solidfiles.com/*"
          "*://www.animeworld.tv/api/episode/serverPlayerAnimeWorld?id=*"
          "*://www.animeworld.so/api/episode/serverPlayerAnimeWorld?id=*"
          "*://filemoon.sx/e/*"
          "*://kerapoxy.cc/e/*"
          "*://vpcxz19p.xyz/e/*"
          "*://filemoon.top/e/*"
          "*://fmoonembed.pro/e/*"
          "*://rgeyyddl.skin/e/*"
          "*://designparty.sx/e/*"
          "*://c4qhk0je.xyz/e/*"
          "*://1azayf9w.xyz/e/*"
          "*://81u6xl9d.xyz/e/*"
          "*://mb.toonanime.xyz/dist/*"
          "*://aniyan.net/jwplayer/*"
          "*://*.googlevideo.com/videoplayback?*"
          "*://*.streamhide.to/e/*"
          "*://api.animeflix.live/*"
          "*://api.animeflix.dev/*"
          "*://*.animeflix.ci/player?*"
          "*://megacloud.tv/*"
          "*://vixcloud.cc/*"
          "*://vixcloud.co/*"
          "*://yonaplay.org/*"
          "*://*.4shared.com/*"
          "*://*.videa.hu/*"
          "*://*.soraplay.xyz/*"
          "*://streamwish.to/e/*"
          "*://sfastwish.com/e/*"
          "*://awish.pro/e/*"
          "*://alions.pro/v/*"
          "*://megaf.cc/e/*"
          "*://doflix.net/*"
        ];
        platforms = platforms.all;
      };
    };
    "markdownload" = buildFirefoxXpiAddon {
      pname = "markdownload";
      version = "3.4.0";
      addonId = "{1c5e4c6f-5530-49a3-b216-31ce7d744db0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4341225/markdownload-3.4.0.xpi";
      sha256 = "0524c38b6770d09a845ebaea42792043b19e8524dd1fa0cc9c53a658610e6c43";
      meta = with lib;
      {
        homepage = "https://github.com/deathau/markdown-clipper";
        description = "This extension works like a web clipper, but it downloads articles in a markdown format. Turndown and Readability.js are used as core libraries. It is not guaranteed to work with all websites.";
        license = licenses.asl20;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "downloads"
          "storage"
          "contextMenus"
          "clipboardWrite"
        ];
        platforms = platforms.all;
      };
    };
    "matte-black-red" = buildFirefoxXpiAddon {
      pname = "matte-black-red";
      version = "2022.2.23";
      addonId = "{a7589411-c5f6-41cf-8bdc-f66527d9d930}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3913593/matte_black_red-2022.2.23.xpi";
      sha256 = "1dd32994ec6e006544efe15efcfa96145c929ff65366a05d3b5c0e44c6a59ac6";
      meta = with lib;
      {
        homepage = "https://elijahlopez.ca/";
        description = "A modern dark / Matte Black theme with a red accent color.\nClick my name for more accents (request if not available).";
        license = licenses.cc-by-nc-sa-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "maya-dark" = buildFirefoxXpiAddon {
      pname = "maya-dark";
      version = "1.0";
      addonId = "{0f4f1bc1-0466-48f9-83a8-756f5f611c97}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3947037/maya_dark-1.0.xpi";
      sha256 = "d55ffe09d2e73735b0b8cc654894fddd30ef0a3b5589809364095c5e77239464";
      meta = with lib;
      {
        description = "Deep purple pink solid theme. Hopefully comfortable to use and fairly easy on the eyes.";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "maya-light" = buildFirefoxXpiAddon {
      pname = "maya-light";
      version = "1.0";
      addonId = "{80daef64-2ecc-4722-aab4-bc860d1578c7}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3947054/maya_light-1.0.xpi";
      sha256 = "611241d87321f7d1e86324f425eb0a8f6ef86a747c48bd3b38edd10eb7486276";
      meta = with lib;
      {
        description = "Soft pastel pink light theme with a few darker Evil maya accents. Fairly bright but should be comfortable for most users.";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "metamask" = buildFirefoxXpiAddon {
      pname = "metamask";
      version = "11.16.16";
      addonId = "webextension@metamask.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326873/ether_metamask-11.16.16.xpi";
      sha256 = "c91ea731551b8f2fdf32a87735a60eb607541872e71969d623b3c462b8f7d67e";
      meta = with lib;
      {
        description = "Ethereum Browser Extension";
        mozPermissions = [
          "storage"
          "unlimitedStorage"
          "clipboardWrite"
          "http://localhost:8545/"
          "https://*.infura.io/"
          "https://*.codefi.network/"
          "https://*.cx.metamask.io/"
          "https://chainid.network/chains.json"
          "https://lattice.gridplus.io/*"
          "activeTab"
          "webRequest"
          "*://*.eth/"
          "notifications"
          "file://*/*"
          "http://*/*"
          "https://*/*"
          "*://connect.trezor.io/*/popup.html"
        ];
        platforms = platforms.all;
      };
    };
    "modrinthify" = buildFirefoxXpiAddon {
      pname = "modrinthify";
      version = "1.7.1";
      addonId = "{5183707f-8a46-4092-8c1f-e4515bcebbad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4152621/modrinthify-1.7.1.xpi";
      sha256 = "eef38c5b7eee035850afb1f5bcba6b70d1bf88de4bf898e3d12affe13f69902e";
      meta = with lib;
      {
        homepage = "https://github.com/devBoi76/modrinthify";
        description = "Automatically searches Modrinth for Curseforge mods and displays Modrinth notifications in the toolbar!";
        license = licenses.mit;
        mozPermissions = [
          "https://api.modrinth.com/v2/*"
          "storage"
          "alarms"
          "*://*.curseforge.com/minecraft/*"
          "*://*.spigotmc.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "momentumdash" = buildFirefoxXpiAddon {
      pname = "momentumdash";
      version = "2.15.11";
      addonId = "momentum@momentumdash.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336000/momentumdash-2.15.11.xpi";
      sha256 = "712924c961ddbe71c30382d85c06907e80ba295ad56f134ddbba7601d4803a03";
      meta = with lib;
      {
        homepage = "https://momentumdash.com";
        description = "Replace your new tab page with an all-in-one productivity dashboard. Featuring daily inspiration, focus reminders, to-do lists, local weather info, and more!";
        license = {
          shortName = "momentum";
          fullName = "Momentum Terms of Use";
          url = "https://momentumdash.com/legal";
          free = false;
        };
        mozPermissions = [
          "unlimitedStorage"
          "https://*.momentumdash.com/*"
          "alarms"
        ];
        platforms = platforms.all;
      };
    };
    "move-unloaded-tabs-for-tst" = buildFirefoxXpiAddon {
      pname = "move-unloaded-tabs-for-tst";
      version = "2.4";
      addonId = "{731bf636-c808-4c86-b02f-af462eccc963}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3531247/move_unloaded_tabs_for_tst-2.4.xpi";
      sha256 = "9c1c5d8a8ae4a27428e7c1f7e8c1671b40bed388dafac35900f3b80c5118fa7b";
      meta = with lib;
      {
        homepage = "https://github.com/Lej77/move-unloaded-tabs-for-tree-style-tab";
        description = "Move tabs in the Tree Style Tab Sidebar without them becoming active.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "movie-web" = buildFirefoxXpiAddon {
      pname = "movie-web";
      version = "1.1.4";
      addonId = "{b0a674f9-f848-9cfd-0feb-583d211308b0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4286163/cfu_flix_movie_web_extension-1.1.4.xpi";
      sha256 = "bcd95a93684307bae03f02069ca519d115f279810de2011c62853d5fd5c5fb52";
      meta = with lib;
      {
        homepage = "https://326486.xyz";
        description = "Enhance your streaming experience with just one click\n\n• Greatly increase the list of sources available.\n• Start using the website without any friction.\n• Enjoy other supported websites or self-hosts.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "declarativeNetRequest"
          "activeTab"
          "cookies"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "multi-account-containers" = buildFirefoxXpiAddon {
      pname = "multi-account-containers";
      version = "8.1.3";
      addonId = "@testpilot-containers";
      url = "https://addons.mozilla.org/firefox/downloads/file/4186050/multi_account_containers-8.1.3.xpi";
      sha256 = "33edd98d0fc7d47fa310f214f897ce4dfe268b0f868c9d7f32b4ca50573df85c";
      meta = with lib;
      {
        homepage = "https://github.com/mozilla/multi-account-containers/#readme";
        description = "Firefox Multi-Account Containers lets you keep parts of your online life separated into color-coded tabs. Cookies are separated by container, allowing you to use the web with multiple accounts and integrate Mozilla VPN for an extra layer of privacy.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "cookies"
          "contextMenus"
          "contextualIdentities"
          "history"
          "idle"
          "management"
          "storage"
          "unlimitedStorage"
          "tabs"
          "webRequestBlocking"
          "webRequest"
        ];
        platforms = platforms.all;
      };
    };
    "multiple-tab-handler" = buildFirefoxXpiAddon {
      pname = "multiple-tab-handler";
      version = "3.1.13";
      addonId = "multipletab@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255656/multiple_tab_handler-3.1.13.xpi";
      sha256 = "19f3629b3c5de97e28d1ef696f04a89a26c10a040b0048bfd3f2a757008bee37";
      meta = with lib;
      {
        homepage = "http://piro.sakura.ne.jp/xul/_multipletab.html.en";
        description = "Allows you to select tabs by dragging and do something.";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "contextualIdentities"
          "cookies"
          "menus"
          "menus.overrideContext"
          "notifications"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "musescore-downloader" = buildFirefoxXpiAddon {
      pname = "musescore-downloader";
      version = "0.26.0";
      addonId = "{69856097-6e10-42e9-acc7-0c063550c7b8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3818223/musescore_downloader-0.26.0.xpi";
      sha256 = "2d7d1d70d953231aa7464f89a33154b78019baeee855284bfe9dd2db505a8e76";
      meta = with lib;
      {
        homepage = "https://github.com/Xmader/musescore-downloader#readme";
        description = "download sheet music from <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/c0273e141ab141ea0a7256437045917b687d145c317a25868e70a5d8ccb864ea/http%3A//musescore.com\" rel=\"nofollow\">musescore.com</a> for free, no login or Musescore Pro required | 免登录、免 Musescore Pro，免费下载 <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/c0273e141ab141ea0a7256437045917b687d145c317a25868e70a5d8ccb864ea/http%3A//musescore.com\" rel=\"nofollow\">musescore.com</a> 上的曲谱";
        license = licenses.mit;
        mozPermissions = [ "*://*.musescore.com/*/*" ];
        platforms = platforms.all;
      };
    };
    "native-mathml" = buildFirefoxXpiAddon {
      pname = "native-mathml";
      version = "1.9.6";
      addonId = "jid1-fGtBdrROY6E1gA@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4048711/native_mathml-1.9.6.xpi";
      sha256 = "fa2d2ceebd65b2e9a682dc8fcd606942f969552825c7edecaf4ef679cab06cac";
      meta = with lib;
      {
        homepage = "https://github.com/fred-wang/webextension-native-mathml";
        description = "Force MathJax/KaTeX/MediaWIki to use native MathML rendering.";
        license = licenses.mpl20;
        mozPermissions = [ "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "new-tab-override" = buildFirefoxXpiAddon {
      pname = "new-tab-override";
      version = "16.0.1";
      addonId = "newtaboverride@agenedia.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4303770/new_tab_override-16.0.1.xpi";
      sha256 = "d61605a80daefa1379881250e33f060b884adedb1a34c7961804003c938374b3";
      meta = with lib;
      {
        homepage = "https://www.soeren-hentzschel.at/firefox-webextensions/new-tab-override/";
        description = "New Tab Override allows you to set the page that shows whenever you open a new tab.";
        license = licenses.mpl20;
        mozPermissions = [
          "browserSettings"
          "cookies"
          "history"
          "menus"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "new-window-without-toolbar" = buildFirefoxXpiAddon {
      pname = "new-window-without-toolbar";
      version = "1.3.0";
      addonId = "new-window-without-toolbar@tkrkt.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/1738301/new_window_without_toolbar-1.3.0.xpi";
      sha256 = "f3504d65c0ac0fa22c37629b6767091b03802a5f15edb0f92dd1caa90a76fa91";
      meta = with lib;
      {
        description = "Open current page in new window without toolbar.";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "new-zealand-english-dict" = buildFirefoxXpiAddon {
      pname = "new-zealand-english-dict";
      version = "1.0.1.3resigned1";
      addonId = "en-NZ@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270296/new_zealand_english_dict-1.0.1.3resigned1.xpi";
      sha256 = "d072da080ed290c0982b28b4d51cbd384419d8f25a1e7ba69c702a74dbba389f";
      meta = with lib;
      {
        description = "New Zealand English Dictionary 1.0.1 for Firefox.";
        license = licenses.lgpl21;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "new_tongwentang" = buildFirefoxXpiAddon {
      pname = "new_tongwentang";
      version = "2.2.0";
      addonId = "tongwen@softcup";
      url = "https://addons.mozilla.org/firefox/downloads/file/4029313/new_tongwentang-2.2.0.xpi";
      sha256 = "b51cc33f21edfa063628d86e2f8d05279690cc23f7ca3c25263084d1bc2b3b94";
      meta = with lib;
      {
        homepage = "https://github.com/softcup/New-Tongwentang-for-Firefox";
        description = "Traditional and Simplified Chinese Converter";
        license = licenses.mit;
        mozPermissions = [
          "contextMenus"
          "downloads"
          "notifications"
          "storage"
          "unlimitedStorage"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "news-feed-eradicator" = buildFirefoxXpiAddon {
      pname = "news-feed-eradicator";
      version = "2.2.7";
      addonId = "@news-feed-eradicator";
      url = "https://addons.mozilla.org/firefox/downloads/file/4300135/news_feed_eradicator-2.2.7.xpi";
      sha256 = "99fa2dab867cdb5f50cbf2d4ec1ff632d57a9b9c73371786e8f098f1c5b24522";
      meta = with lib;
      {
        homepage = "https://west.io/news-feed-eradicator";
        description = "Find yourself spending too much time on Facebook? Eradicate distractions by replacing your entire news feed with an inspiring quote";
        license = licenses.mit;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "newtab-adapter" = buildFirefoxXpiAddon {
      pname = "newtab-adapter";
      version = "1.3.0";
      addonId = "newtab-adapter@gdh1995.cn";
      url = "https://addons.mozilla.org/firefox/downloads/file/3632463/newtab_adapter-1.3.0.xpi";
      sha256 = "43cee7feffb204155961be4a0f1ef441abc5e19b340c348c28c97b5cbddd86ca";
      meta = with lib;
      {
        homepage = "https://github.com/gdh1995/vimium-c-helpers/tree/master/newtab";
        description = "Take over browser's new tab settings and open another configurable URL";
        license = licenses.mit;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "ng-inspect" = buildFirefoxXpiAddon {
      pname = "ng-inspect";
      version = "1.1resigned1";
      addonId = "jid1-v6jvJrqACQCakw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270648/ng_inspect-1.1resigned1.xpi";
      sha256 = "bbdd8f09ba7503788b687349fee8e41530bacfb29c642db1b4729b0904a780df";
      meta = with lib;
      {
        homepage = "https://github.com/christophehurpeau/ng-inspect";
        description = "Inspect the angular scope in the developper tools inspector";
        license = licenses.mit;
        mozPermissions = [ "contextMenus" "tabs" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "nighttab" = buildFirefoxXpiAddon {
      pname = "nighttab";
      version = "7.3.0";
      addonId = "{47bf427e-c83d-457d-9b3d-3db4118574bd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3848032/nighttab-7.3.0.xpi";
      sha256 = "ef53db7d9276a9f21533f8b21bc67114965c959802c0d2a92b8fce6cebed800d";
      meta = with lib;
      {
        homepage = "https://github.com/zombieFox/nightTab";
        description = "A neutral new tab page accented with a chosen colour. Customise the layout, style, background and bookmarks in nightTab.";
        license = licenses.gpl3;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "ninja-cookie" = buildFirefoxXpiAddon {
      pname = "ninja-cookie";
      version = "0.2.7";
      addonId = "debug@ninja-cookie.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3625855/ninja_cookie-0.2.7.xpi";
      sha256 = "b48f03a79fec4dc47065088c11115de0159857e6f77f7ffcb7da89b010ad3e61";
      meta = with lib;
      {
        homepage = "https://ninja-cookie.com/";
        description = "Ninja Cookie removes cookie banners by rejecting the use of non-essential cookies.";
        license = {
          shortName = "ninja-cookie";
          fullName = "End-User License Agreement (EULA) of Ninja Cookie";
          url = "https://ninja-cookie.com/eula/";
          free = false;
        };
        mozPermissions = [
          "*://ninja-cookie.gitlab.io/*"
          "storage"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "nitter-redirect" = buildFirefoxXpiAddon {
      pname = "nitter-redirect";
      version = "1.1.5";
      addonId = "{513646f8-fb87-4135-a41e-4cf1d1ccccf2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3614778/nitter_redirect-1.1.5.xpi";
      sha256 = "a85d0c99d4e99c7dd3907af63ce2c88653af4723f564d68a4a1b1d5bce2b995e";
      meta = with lib;
      {
        homepage = "https://github.com/SimonBrazell/nitter-redirect";
        description = "Redirects Twitter requests to Nitter, the privacy friendly alternative.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "webRequest"
          "webRequestBlocking"
          "*://twitter.com/*"
          "*://www.twitter.com/*"
          "*://mobile.twitter.com/*"
          "*://pbs.twimg.com/*"
          "*://video.twimg.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "no-pdf-download" = buildFirefoxXpiAddon {
      pname = "no-pdf-download";
      version = "1.0.6";
      addonId = "{b9b25e4a-bdf4-4270-868c-3f619eaf437d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3020560/no_pdf_download-1.0.6.xpi";
      sha256 = "fa27b6729178a23ccf2eee07cd7650d841fc6040f2e5adfb919931b671ed79e6";
      meta = with lib;
      {
        homepage = "https://github.com/MorbZ/no-pdf-download";
        description = "Opens all PDF files directly in the browser.";
        license = licenses.mit;
        mozPermissions = [ "webRequest" "webRequestBlocking" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "nord123" = buildFirefoxXpiAddon {
      pname = "nord123";
      version = "1.1";
      addonId = "{3360db90-83f8-4291-8872-377ba50fb47c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3692469/nord123-1.1.xpi";
      sha256 = "08016b531c3c63b320f065f115bd326a56856a1c4e3cb442d4d14c998ccd7012";
      meta = with lib;
      {
        description = "A theme with the nord color scheme.";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "nos2x-fox" = buildFirefoxXpiAddon {
      pname = "nos2x-fox";
      version = "1.14.0";
      addonId = "{fdacee2c-bab4-490d-bc4b-ecdd03d5d68a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4311953/nos2x_fox-1.14.0.xpi";
      sha256 = "9b6f69425d6801f1726195ca18fdfeff28126b067f1ba7d109f2927411f87ba9";
      meta = with lib;
      {
        homepage = "https://github.com/diegogurpegui/nos2x-firefox";
        description = "Nostr Signer Extension (for Firefox)";
        license = licenses.publicDomain;
        mozPermissions = [ "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "noscript" = buildFirefoxXpiAddon {
      pname = "noscript";
      version = "11.4.34";
      addonId = "{73a6fe31-595d-460b-a920-fcc0f8843232}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333280/noscript-11.4.34.xpi";
      sha256 = "e538163118e8e9dcabd6306b8a9abb3fccb556b7d87b68e18aa0997d121ba00a";
      meta = with lib;
      {
        homepage = "https://noscript.net";
        description = "The best security you can get in a web browser! Allow potentially malicious web content to run only from sites you trust. Protect yourself against XSS other web security exploits.";
        license = licenses.gpl2;
        mozPermissions = [
          "contextMenus"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "dns"
          "<all_urls>"
          "file://*/*"
          "ftp://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "notifier-for-github" = buildFirefoxXpiAddon {
      pname = "notifier-for-github";
      version = "24.4.24";
      addonId = "{8d1582b2-ff2a-42e0-ba40-42f4ebfe921b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4269410/notifier_for_github-24.4.24.xpi";
      sha256 = "db67b2867fbf39a92db382e4ad77ab39ff44a7369eb6b525bff1a8995dbeb1e9";
      meta = with lib;
      {
        homepage = "https://github.com/sindresorhus/notifier-for-github";
        description = "Get notified about new GitHub notifications";
        license = licenses.mit;
        mozPermissions = [ "alarms" "storage" ];
        platforms = platforms.all;
      };
    };
    "notion-web-clipper" = buildFirefoxXpiAddon {
      pname = "notion-web-clipper";
      version = "0.3.2";
      addonId = "{4b547b2c-e114-4344-9b70-09b2fe0785f3}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3768048/notion_web_clipper-0.3.2.xpi";
      sha256 = "3bc63fff7b75d04c1575092ff4fee3e3c487f0b5e4b6f51a9374b31844dfacc0";
      meta = with lib;
      {
        homepage = "https://www.notion.so/web-clipper";
        description = "Use our Web Clipper to save any website into Notion.";
        license = {
          shortName = "notion-web-clipper";
          fullName = "Notion Terms and Privacy";
          url = "https://www.notion.so/Terms-and-Privacy-28ffdd083dc3473e9c2da6ec011b58ac";
          free = false;
        };
        mozPermissions = [
          "activeTab"
          "storage"
          "cookies"
          "https://*.notion.so/"
          "https://*.notion.so/*"
        ];
        platforms = platforms.all;
      };
    };
    "octolinker" = buildFirefoxXpiAddon {
      pname = "octolinker";
      version = "6.10.5";
      addonId = "octolinker@stefanbuck.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4029754/octolinker-6.10.5.xpi";
      sha256 = "36a953c5bd3a60648a45ec04fb131664f54f2d31caf26853c2b3d438d50674c1";
      meta = with lib;
      {
        homepage = "https://octolinker.vercel.app";
        description = "It turns language-specific module-loading statements like include, require or import into links. Depending on the language it will either redirect you to the referenced file or to an external website like a manual page or another service.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "https://github.com/"
          "https://api.github.com/"
          "https://gist.github.com/"
          "https://octolinker-api.now.sh/"
          "https://github.com/*"
          "https://gist.github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "octotree" = buildFirefoxXpiAddon {
      pname = "octotree";
      version = "8.0.1";
      addonId = "jid1-Om7eJGwA1U8Akg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4300186/octotree-8.0.1.xpi";
      sha256 = "abe8d3ed8ad29409ae0cd630519eb84c68fbaf02d945b88d25f0af0602c17402";
      meta = with lib;
      {
        homepage = "https://github.com/buunguyen/octotree/";
        description = "GitHub on steroids";
        mozPermissions = [
          "https://api.github.com/*"
          "https://www.octotree.io/*"
          "storage"
          "contextMenus"
          "activeTab"
          "https://github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "offline-qr-code-generator" = buildFirefoxXpiAddon {
      pname = "offline-qr-code-generator";
      version = "1.8";
      addonId = "offline-qr-code@rugk.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3870992/offline_qr_code_generator-1.8.xpi";
      sha256 = "449c236b88cf3fea2da31bdc004fdf6379face841b77ccc5096cba3afbd983de";
      meta = with lib;
      {
        homepage = "https://github.com/rugk/offline-qr-code";
        description = "This add-on allows you to quickly generate a QR code offline with the URL of the open tab or any (selected) other text! 👍\n\nIt works completely offline protecting your privacy and has a big range of features like colored QR codes!";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "menus" ];
        platforms = platforms.all;
      };
    };
    "okta-browser-plugin" = buildFirefoxXpiAddon {
      pname = "okta-browser-plugin";
      version = "6.32.0";
      addonId = "plugin@okta.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4309594/okta_browser_plugin-6.32.0.xpi";
      sha256 = "6b8352cb1e4f288c4513798ce6917650bc9078e277de202524ff186dd775ed8b";
      meta = with lib;
      {
        homepage = "https://www.okta.com";
        description = "Okta Browser Plugin";
        license = {
          shortName = "okta";
          fullName = "Various Okta Agreements";
          url = "https://www.okta.com/agreements/";
          free = false;
        };
        mozPermissions = [
          "tabs"
          "cookies"
          "https://*/"
          "http://*/"
          "storage"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
        ];
        platforms = platforms.all;
      };
    };
    "old-reddit-redirect" = buildFirefoxXpiAddon {
      pname = "old-reddit-redirect";
      version = "1.8.1";
      addonId = "{9063c2e9-e07c-4c2c-9646-cfe7ca8d0498}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4182157/old_reddit_redirect-1.8.1.xpi";
      sha256 = "bd411715bb36bd535a0211a47bd69c73abefac6153164f7e00f5b57971397700";
      meta = with lib;
      {
        homepage = "https://github.com/tom-james-watson/old-reddit-redirect";
        description = "Ensure Reddit always loads the old design";
        license = licenses.mit;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "*://reddit.com/*"
          "*://www.reddit.com/*"
          "*://np.reddit.com/*"
          "*://amp.reddit.com/*"
          "*://i.reddit.com/*"
          "*://i.redd.it/*"
          "*://preview.redd.it/*"
          "*://old.reddit.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "omnisearch" = buildFirefoxXpiAddon {
      pname = "omnisearch";
      version = "1.4.5";
      addonId = "{5bc8d6f7-79e6-42b0-a64e-06a05dc2db5d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3925614/omnisearch-1.4.5.xpi";
      sha256 = "11b1ed044efc29ce48a2206049959700f59c33f5d631087fc83efea5b2d02696";
      meta = with lib;
      {
        homepage = "https://github.com/alyssaxuu/omni";
        description = "Supercharge Firefox with commands, shortcuts, and more";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "activeTab"
          "bookmarks"
          "browsingData"
          "history"
          "search"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "omnivore" = buildFirefoxXpiAddon {
      pname = "omnivore";
      version = "2.10.0";
      addonId = "save-extension@omnivore.app";
      url = "https://addons.mozilla.org/firefox/downloads/file/4246656/omnivore-2.10.0.xpi";
      sha256 = "31142640e86215823150bd9dd3fac003cc0d2dd6735bb36c6f42c1c215916ca4";
      meta = with lib;
      {
        homepage = "https://omnivore.app/";
        description = "Omnivore is the read-it-later app for serious readers. Distraction free. Privacy focused. Open source.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "storage"
          "contextMenus"
          "https://*/**"
          "http://*/**"
        ];
        platforms = platforms.all;
      };
    };
    "omori-headspace-by-lemon" = buildFirefoxXpiAddon {
      pname = "omori-headspace-by-lemon";
      version = "1.0";
      addonId = "{f1b7aef0-b095-4976-af76-27f6344a128e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4069986/omori_headspace_by_lemon-1.0.xpi";
      sha256 = "1840478ad9fff5e6f31930ee7c8ffd6a84f504bac0cd30646a6919eae7ee95f3";
      meta = with lib;
      {
        description = "This theme will skin your UI to look like the Headspace sky from OMORI!";
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "one-click-wayback" = buildFirefoxXpiAddon {
      pname = "one-click-wayback";
      version = "0.2";
      addonId = "tom@tom.tf";
      url = "https://addons.mozilla.org/firefox/downloads/file/3658464/one_click_wayback-0.2.xpi";
      sha256 = "652adb4b0b1358f47fdb9ab0fd4ff9ab4cfdabde785219b7819849cbb6467e82";
      meta = with lib;
      {
        homepage = "https://git.sr.ht/~tomf/one-click-wayback";
        description = "View cached versions of your current page in the Wayback Machine.";
        license = licenses.mpl20;
        mozPermissions = [ "activeTab" ];
        platforms = platforms.all;
      };
    };
    "onepassword-password-manager" = buildFirefoxXpiAddon {
      pname = "onepassword-password-manager";
      version = "2.27.1";
      addonId = "{d634138d-c276-4fc8-924b-40a0ea21d284}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333130/1password_x_password_manager-2.27.1.xpi";
      sha256 = "675502aa7938d495066e1e56e3c579c1216687175da87161e1ae89d610467736";
      meta = with lib;
      {
        homepage = "https://1password.com";
        description = "The best way to experience 1Password in your browser. Easily sign in to sites, generate passwords, and store secure information, including logins, credit cards, notes, and more.";
        license = {
          shortName = "1pwd";
          fullName = "Service Agreement for 1Password users and customers";
          url = "https://1password.com/legal/terms-of-service/";
          free = false;
        };
        mozPermissions = [
          "<all_urls>"
          "alarms"
          "clipboardWrite"
          "contextMenus"
          "downloads"
          "idle"
          "management"
          "nativeMessaging"
          "notifications"
          "privacy"
          "scripting"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "https://*.1password.ca/*"
          "https://*.1password.com/*"
          "https://*.1password.eu/*"
          "https://*.b5dev.ca/*"
          "https://*.b5dev.com/*"
          "https://*.b5dev.eu/*"
          "https://*.b5local.com/*"
          "https://*.b5staging.com/*"
          "https://*.b5test.ca/*"
          "https://*.b5test.com/*"
          "https://*.b5test.eu/*"
          "https://*.b5rev.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "onetab" = buildFirefoxXpiAddon {
      pname = "onetab";
      version = "1.83";
      addonId = "extension@one-tab.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4175239/onetab-1.83.xpi";
      sha256 = "e8f6a0dc442cda9309a5cbb5980207affd95ec98ba1f1dd390cecebfb07d0379";
      meta = with lib;
      {
        homepage = "http://www.one-tab.com";
        description = "OneTab - Too many tabs? Convert tabs to a list and reduce browser memory";
        license = {
          shortName = "onetab";
          fullName = "Custom License for OneTab";
          url = "https://addons.mozilla.org/en-US/firefox/addon/onetab/license/";
          free = false;
        };
        mozPermissions = [ "unlimitedStorage" "storage" "tabs" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "open-in-browser" = buildFirefoxXpiAddon {
      pname = "open-in-browser";
      version = "2.11";
      addonId = "openinbrowser@www.spasche.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3481016/open_in_browser-2.11.xpi";
      sha256 = "8abbcbfcaffd63d0501e77ae5748ec52ce4df465a83433e2063542ed74a7ce4f";
      meta = with lib;
      {
        homepage = "https://github.com/Rob--W/open-in-browser";
        description = "Offers the possibility to display documents in the browser window.";
        license = licenses.mpl20;
        mozPermissions = [
          "history"
          "menus"
          "sessions"
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "open-url-in-container" = buildFirefoxXpiAddon {
      pname = "open-url-in-container";
      version = "1.0.3";
      addonId = "{f069aec0-43c5-4bbf-b6b4-df95c4326b98}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3566167/open_url_in_container-1.0.3.xpi";
      sha256 = "687211a5fe6ee08c2b3060292858474b27f91383296bc1b6ba0391c00abc2697";
      meta = with lib;
      {
        description = "This extension enables support for opening links in specific containers using custom protocol handler. It works for terminal, OS shortcuts and regular HTML pages.";
        license = licenses.mpl20;
        mozPermissions = [ "contextualIdentities" "cookies" ];
        platforms = platforms.all;
      };
    };
    "org-capture" = buildFirefoxXpiAddon {
      pname = "org-capture";
      version = "0.2.2resigned1";
      addonId = "{ddefd400-12ea-4264-8166-481f23abaa87}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272196/org_capture-0.2.2resigned1.xpi";
      sha256 = "eac6fdbfb90ff92862228acb7e8d265f1326ddcc4b86f87455d74ae448a22f45";
      meta = with lib;
      {
        homepage = "https://github.com/sprig/org-capture-extension";
        description = "A helper for capturing things via org-protocol in emacs: First, set up: <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/04ad17418f8d35ee0f3edf4599aed951b2a5ef88d4bc7e0e3237f6d86135e4fb/http%3A//orgmode.org/worg/org-contrib/org-protocol.html\">http://orgmode.org/worg/org-contrib/org-protocol.html</a> or <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fb401af8127ccf82bc948b0a7af0543eec48d58100c0c46404f81aabeda442e6/https%3A//github.com/sprig/org-capture-extension\">https://github.com/sprig/org-capture-extension</a>\n\nSee <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/6aad51cc4e2f9476f9fff344e6554eade08347181aed05f8b61cda05073daecb/https%3A//youtu.be/zKDHto-4wsU\">https://youtu.be/zKDHto-4wsU</a> for example usage";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" ];
        platforms = platforms.all;
      };
    };
    "overbitewx" = buildFirefoxXpiAddon {
      pname = "overbitewx";
      version = "0.4.2resigned1";
      addonId = "overbitewx@floodgap.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272731/overbitewx-0.4.2resigned1.xpi";
      sha256 = "130335ef18502c7bc50a3f67e91305075f1aedaf359c53c3745b46c689eb0d1a";
      meta = with lib;
      {
        description = "Re-enables the Gopher protocol in Firefox 56 and above, allowing you to enter Gopher URLs and click on Gopher links. Because WebExtensions does not yet have a TCP sockets API, this version redirects your requests to the Floodgap Public Gopher Proxy.";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" ];
        platforms = platforms.all;
      };
    };
    "overview" = buildFirefoxXpiAddon {
      pname = "overview";
      version = "0.5.1resigned1";
      addonId = "{2df83d0b-1ccb-47bb-81c4-1c29f5485776}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272954/overview-0.5.1resigned1.xpi";
      sha256 = "a65032b723f1d6c94e7a8a2dab1130fc56b6daddd0a48403c1d8a60158321e36";
      meta = with lib;
      {
        homepage = "https://gitlab.petton.fr/DamienCassou/overview";
        description = "Give an overview of a page's headings in a sidebar. The sidebar has links towards each heading in the current page, making it easy to understand the structure and navigate inside the page.";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "pakkujs" = buildFirefoxXpiAddon {
      pname = "pakkujs";
      version = "2024.8.1";
      addonId = "{646d57f4-d65c-4f0d-8e80-5800b92cfdaa}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328983/pakkujs-2024.8.1.xpi";
      sha256 = "3c4f574f29e3669e224e50eef7aef9b69851f5b57c57215df74191c2609a7300";
      meta = with lib;
      {
        homepage = "http://s.xmcp.ltd/pakkujs/?src=amo_homepage";
        description = "瞬间过滤B站(<a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4d0b4461e26c11562fa1a512258f7f68dd57fa773da49fcb021256804f09b1fc/http%3A//bilibili.com\">bilibili.com</a>)刷屏的相似弹幕，还你清爽的弹幕视频体验。\t\n*a tweak for a Chinese website. Please ignore this add-on if you are not a user of <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4d0b4461e26c11562fa1a512258f7f68dd57fa773da49fcb021256804f09b1fc/http%3A//bilibili.com\">bilibili.com</a>.*";
        license = licenses.gpl3;
        mozPermissions = [
          "notifications"
          "storage"
          "contextMenus"
          "scripting"
          "declarativeNetRequestWithHostAccess"
          "*://*.bilibili.com/*"
          "https://www.bilibili.com/robots.txt?pakku_sandbox"
        ];
        platforms = platforms.all;
      };
    };
    "paperpile" = buildFirefoxXpiAddon {
      pname = "paperpile";
      version = "1.0.61";
      addonId = "firefox-production@paperpile.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337464/paperpile_addon-1.0.61.xpi";
      sha256 = "087e3ee7a21c787cf122608bbccccc2de13b35baeddd458f60e9bd03b7a92746";
      meta = with lib;
      {
        homepage = "https://paperpile.com/?welcome";
        description = "Collect, organize, annotate and cite your research papers in Firefox.";
        license = {
          shortName = "paperpile-tos";
          fullName = "Paperpile Terms of Service";
          url = "https://paperpile.com/tos/";
          free = false;
        };
        mozPermissions = [
          "contextMenus"
          "tabs"
          "scripting"
          "<all_urls>"
          "storage"
          "unlimitedStorage"
          "declarativeNetRequestWithHostAccess"
          "*://app.paperpile.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "passbolt" = buildFirefoxXpiAddon {
      pname = "passbolt";
      version = "4.9.1";
      addonId = "passbolt@passbolt.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4325047/passbolt-4.9.1.xpi";
      sha256 = "402859381eec9be2059e5ee6003f2f8e2d2150cf0e3b613b515002589e14f509";
      meta = with lib;
      {
        homepage = "https://www.passbolt.com";
        description = "Passbolt is an open source password manager designed for collaboration. Securely create, manage and monitor your passwords. Share them instantly with your team.";
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "tabs"
          "storage"
          "unlimitedStorage"
          "*://*/*"
          "alarms"
          "cookies"
        ];
        platforms = platforms.all;
      };
    };
    "passff" = buildFirefoxXpiAddon {
      pname = "passff";
      version = "1.20.1";
      addonId = "passff@invicem.pro";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339137/passff-1.20.1.xpi";
      sha256 = "7418b41a6ee43d380d42147a3632c0cf7e68591a4341effc5dc2e40a72575122";
      meta = with lib;
      {
        homepage = "https://codeberg.org/PassFF/passff";
        description = "Add-on that allows users of the unix password manager 'pass' (see <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/24f646fb865abe6edf9e3f626db62565bfdc2e7819ab33a5b4c30a9573787988/https%3A//www.passwordstore.org/\" rel=\"nofollow\">https://www.passwordstore.org/</a>) to access their password store from Firefox";
        license = licenses.gpl2;
        mozPermissions = [
          "<all_urls>"
          "clipboardWrite"
          "contextMenus"
          "contextualIdentities"
          "nativeMessaging"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "pay-by-privacy" = buildFirefoxXpiAddon {
      pname = "pay-by-privacy";
      version = "2.4.1";
      addonId = "privacy@privacy.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4335806/pay_by_privacy-2.4.1.xpi";
      sha256 = "8819ef46cbfb9d5a1afcc72ce3c3ea0cdec3a51e87331cd2b25195a36ff28c04";
      meta = with lib;
      {
        homepage = "https://privacy.com";
        description = "Privacy's Firefox add-on allows you to generate a new virtual card number with 1-click on any checkout page. Keep your payment info safe from data breaches, shady merchants, and sneaky subscription billing.";
        license = {
          shortName = "pay-by-privacy";
          fullName = "Custom License for Privacy | Protect Your Payments";
          url = "https://addons.mozilla.org/en-US/firefox/addon/pay-by-privacy/license/";
          free = false;
        };
        mozPermissions = [
          "storage"
          "tabs"
          "activeTab"
          "cookies"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "peertubeify" = buildFirefoxXpiAddon {
      pname = "peertubeify";
      version = "0.6.1resigned1";
      addonId = "{01175c8e-4506-4263-bad9-d3ddfd4f5a5f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4275922/peertubeify-0.6.1resigned1.xpi";
      sha256 = "d1752ebf0851b770be57c51e3d1dff7b61a69c12829dada885687c18d4f232b9";
      meta = with lib;
      {
        homepage = "https://gitlab.com/Ealhad/peertubeify";
        description = "PeerTubeify allows to redirect between YouTube and PeerTube and across PeerTube instances, automatically or by displaying a link.\n\nDon't forget to set your preferences :)\n\nPeerTubeify is not affiliated with PeerTube.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "storage"
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "*://*.youtube.com/*"
          "*://*.invidio.us/*"
          "https://*/videos/watch/*"
        ];
        platforms = platforms.all;
      };
    };
    "penetration-testing-kit" = buildFirefoxXpiAddon {
      pname = "penetration-testing-kit";
      version = "8.9.2";
      addonId = "{1ab3d165-d664-4bf2-adb7-fed77f46116f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4282628/penetration_testing_kit-8.9.2.xpi";
      sha256 = "ac833ec71bacc074c2402e7ab3607551fe2eb6db97481b72476d3b34aa779b5b";
      meta = with lib;
      {
        homepage = "https://pentestkit.co.uk/";
        description = "Penetration Testing Kit is an extension for application security practitioners, penetration testers, and red teams.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "cookies"
          "notifications"
          "storage"
          "unlimitedStorage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "scripting"
        ];
        platforms = platforms.all;
      };
    };
    "persistentpin" = buildFirefoxXpiAddon {
      pname = "persistentpin";
      version = "1.1.1";
      addonId = "{b8f5b973-7a28-4787-8e94-fdb7504e3991}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3920941/persistentpin-1.1.1.xpi";
      sha256 = "5a1ff0563e0a469aae7af9c0e723cac50819c6c3457792b576e90ff911b9192d";
      meta = with lib;
      {
        homepage = "https://github.com/Faerbit/persistentpin-webextension";
        description = "Pins the same websites across browser restarts.";
        license = licenses.mit;
        mozPermissions = [ "storage" "tabs" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "pinboard" = buildFirefoxXpiAddon {
      pname = "pinboard";
      version = "5.0.0";
      addonId = "{5158522f-7494-41b1-89ff-00d4cc1d87d3}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3581599/pinboard-5.0.0.xpi";
      sha256 = "767db6bcd7d4ad32478c5a38d513feeea638d1ceff231a97f40fd010a1499e59";
      meta = with lib;
      {
        homepage = "https://browsernative.com/mozilla-firefox-extensions/";
        description = "Unofficial Firefox add-on for <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/9195797232dc4f996eff7bc68a67ac5b906f828efd0d0ebded52b3b4ef47556d/http%3A//Pinboard.in\" rel=\"nofollow\">Pinboard.in</a>. Bookmark web pages &amp; add notes easily. Keyboard command: Alt + p";
        license = licenses.mpl20;
        mozPermissions = [ "activeTab" "menus" ];
        platforms = platforms.all;
      };
    };
    "pipewire-screenaudio" = buildFirefoxXpiAddon {
      pname = "pipewire-screenaudio";
      version = "0.3.4";
      addonId = "pipewire-screenaudio@icenjim";
      url = "https://addons.mozilla.org/firefox/downloads/file/4186504/pipewire_screenaudio-0.3.4.xpi";
      sha256 = "a74714514f490b6d5c36e32b88510ae3e5e7f1afdcb29c2041a836d3aa484cbe";
      meta = with lib;
      {
        homepage = "https://github.com/IceDBorn/pipewire-screenaudio";
        description = "Passthrough pipewire audio to WebRTC screenshare";
        license = licenses.gpl3;
        mozPermissions = [ "nativeMessaging" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "plasma-integration" = buildFirefoxXpiAddon {
      pname = "plasma-integration";
      version = "1.9.1";
      addonId = "plasma-browser-integration@kde.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298512/plasma_integration-1.9.1.xpi";
      sha256 = "394a3525185679dd5430d05f980ab6be19d96557560fe86208c21a8807669b33";
      meta = with lib;
      {
        homepage = "http://kde.org";
        description = "Multitask efficiently by controlling browser functions from the Plasma desktop.";
        license = licenses.gpl3;
        mozPermissions = [
          "nativeMessaging"
          "notifications"
          "storage"
          "downloads"
          "tabs"
          "<all_urls>"
          "contextMenus"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "play-to-kodi4" = buildFirefoxXpiAddon {
      pname = "play-to-kodi4";
      version = "1.9.2resigned1";
      addonId = "{ba707b6e-571d-47c9-a31d-7b94807d6ee2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272730/play_to_kodi4-1.9.2resigned1.xpi";
      sha256 = "56c79b228994ed369231be9536e5c4bcbdc43363737d5f49f1961ea3b738e148";
      meta = with lib;
      {
        homepage = "https://github.com/maciex/play-to-kodi";
        description = "Play, queue and remote control your favourite online media on Kodi / XBMC.\n\nThis is a port of an add-on developed originally for Google Chrome.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "tabs"
          "*://www.googleapis.com/*"
          "http://*/*"
          "contextMenus"
          "<all_urls>"
          "http://www.liveleak.com/view*"
          "*://*.facebook.com/*"
          "*://www.youtube.com/*"
          "*://soundcloud.com/*"
          "*://streamcloud.eu/*"
          "*://mycloudplayers.com/*"
          "*://*.khanacademy.org/*"
          "*://*.hulu.com/watch/*"
          "*://*.animelab.com/player/*"
          "*://*.lynda.com/*"
          "*://*.urgantshow.ru/page/*"
          "*://*.kino-live.org/*"
          "*://*.vessel.com/*"
          "*://*.cda.pl/*"
          "*://*.xnxx.com/*"
          "*://*.seasonvar.ru/*"
          "*://solarmoviez.to/*"
          "*://vivo.sx/*"
          "*://*.pornhub.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "playback-speed" = buildFirefoxXpiAddon {
      pname = "playback-speed";
      version = "1.4.4";
      addonId = "playbackSpeed@waldemar.b";
      url = "https://addons.mozilla.org/firefox/downloads/file/3864607/playback_speed-1.4.4.xpi";
      sha256 = "49f195fe05ada13b39505f2c0aa44631e287f7d19a2242085e7725443ecc1cfd";
      meta = with lib;
      {
        homepage = "https://github.com/fx4waldi/playbackSpeed";
        description = "Control the speed of video playback.";
        license = licenses.gpl2;
        mozPermissions = [ "tabs" "activeTab" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "polish-dictionary" = buildFirefoxXpiAddon {
      pname = "polish-dictionary";
      version = "1.0.20160228.2resigned1";
      addonId = "pl@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270222/polish_spellchecker_dictionary-1.0.20160228.2resigned1.xpi";
      sha256 = "bb3142c5249221856314efc1f362a33a0c315b30ff07133b33440d016e8f9972";
      meta = with lib;
      {
        homepage = "http://www.aviary.pl/";
        description = "Polish spell-check dictionary for Firefox, Thunderbird and SeaMonkey.";
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "polkadot-js" = buildFirefoxXpiAddon {
      pname = "polkadot-js";
      version = "0.52.2";
      addonId = "{7e3ce1f0-15fb-4fb1-99c6-25774749ec6d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337736/polkadot_js_extension-0.52.2.xpi";
      sha256 = "460c8078f8943b6786d5b8ddf393afe1ce8d9f6c45d0fb16b90095dc740bc72c";
      meta = with lib;
      {
        homepage = "https://github.com/polkadot-js/extension";
        description = "Manage your Polkadot accounts outside of dapps. Injects the accounts and allows signs transactions for a specific account.";
        mozPermissions = [ "storage" "tabs" "http://*/*" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "print-edit-we" = buildFirefoxXpiAddon {
      pname = "print-edit-we";
      version = "29.6";
      addonId = "printedit-we@DW-dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/4144228/print_edit_we-29.6.xpi";
      sha256 = "b17c98a05f57b98e69858086e1b841579237ca4a76fe4a667fa258b4552e9c07";
      meta = with lib;
      {
        description = "Edit the contents of a web page prior to printing or saving. Elements in the web page can be edited, formatted, hidden or deleted. Unwanted content, such as adverts and sidebars, can easily be removed.";
        license = licenses.gpl2;
        mozPermissions = [
          "<all_urls>"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "notifications"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "print-friendly-pdf" = buildFirefoxXpiAddon {
      pname = "print-friendly-pdf";
      version = "5.3.0";
      addonId = "jid0-YQz0l1jthOIz179ehuitYAOdBEs@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3954760/print_friendly_pdf-5.3.0.xpi";
      sha256 = "b132b82ecbf41c11156bd8f92bcd401d40d85b347241522b85e09f3486b7546f";
      meta = with lib;
      {
        homepage = "https://www.printfriendly.com/";
        description = "Makes a Printer Friendly &amp; PDF version of any webpage. Removes navigation, ads, and junk. Formats the page for print so you save paper and ink. Good for the environment and your wallet.";
        license = {
          shortName = "print-friendly-pdf";
          fullName = "Custom License for Print Friendly & PDF";
          url = "https://addons.mozilla.org/en-US/firefox/addon/print-friendly-pdf/license/";
          free = false;
        };
        mozPermissions = [ "storage" "activeTab" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "print-to-pdf-document" = buildFirefoxXpiAddon {
      pname = "print-to-pdf-document";
      version = "0.1.1";
      addonId = "{9ab38051-cd73-4e46-b7bd-dc147f6f6b29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3985408/print_to_pdf_document-0.1.1.xpi";
      sha256 = "d4d37118865ae9a2c6dd38b4898b8ca65a49894833935b7194713cc478e78dd4";
      meta = with lib;
      {
        homepage = "https://mybrowseraddon.com/print-to-pdf.html";
        description = "Easily print any page to PDF with just one click!";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "storage" "<all_urls>" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "privacy-badger" = buildFirefoxXpiAddon {
      pname = "privacy-badger";
      version = "2024.7.17";
      addonId = "jid1-MnnxcxisBPnSXQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4321653/privacy_badger17-2024.7.17.xpi";
      sha256 = "f7afc15d305966bafc9215f600acb0815c84402b7b8c763493387d19415deb0d";
      meta = with lib;
      {
        homepage = "https://privacybadger.org/";
        description = "Automatically learns to block invisible trackers.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "alarms"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "privacy"
          "https://*.facebook.com/*"
          "http://*.facebook.com/*"
          "https://*.messenger.com/*"
          "http://*.messenger.com/*"
          "*://*.facebookcorewwwi.onion/*"
          "https://docs.google.com/*"
          "http://docs.google.com/*"
          "https://mail.google.com/*"
          "http://mail.google.com/*"
          "https://www.google.com/*"
          "http://www.google.com/*"
          "https://www.google.ad/*"
          "http://www.google.ad/*"
          "https://www.google.ae/*"
          "http://www.google.ae/*"
          "https://www.google.com.af/*"
          "http://www.google.com.af/*"
          "https://www.google.com.ag/*"
          "http://www.google.com.ag/*"
          "https://www.google.com.ai/*"
          "http://www.google.com.ai/*"
          "https://www.google.al/*"
          "http://www.google.al/*"
          "https://www.google.am/*"
          "http://www.google.am/*"
          "https://www.google.co.ao/*"
          "http://www.google.co.ao/*"
          "https://www.google.com.ar/*"
          "http://www.google.com.ar/*"
          "https://www.google.as/*"
          "http://www.google.as/*"
          "https://www.google.at/*"
          "http://www.google.at/*"
          "https://www.google.com.au/*"
          "http://www.google.com.au/*"
          "https://www.google.az/*"
          "http://www.google.az/*"
          "https://www.google.ba/*"
          "http://www.google.ba/*"
          "https://www.google.com.bd/*"
          "http://www.google.com.bd/*"
          "https://www.google.be/*"
          "http://www.google.be/*"
          "https://www.google.bf/*"
          "http://www.google.bf/*"
          "https://www.google.bg/*"
          "http://www.google.bg/*"
          "https://www.google.com.bh/*"
          "http://www.google.com.bh/*"
          "https://www.google.bi/*"
          "http://www.google.bi/*"
          "https://www.google.bj/*"
          "http://www.google.bj/*"
          "https://www.google.com.bn/*"
          "http://www.google.com.bn/*"
          "https://www.google.com.bo/*"
          "http://www.google.com.bo/*"
          "https://www.google.com.br/*"
          "http://www.google.com.br/*"
          "https://www.google.bs/*"
          "http://www.google.bs/*"
          "https://www.google.bt/*"
          "http://www.google.bt/*"
          "https://www.google.co.bw/*"
          "http://www.google.co.bw/*"
          "https://www.google.by/*"
          "http://www.google.by/*"
          "https://www.google.com.bz/*"
          "http://www.google.com.bz/*"
          "https://www.google.ca/*"
          "http://www.google.ca/*"
          "https://www.google.cd/*"
          "http://www.google.cd/*"
          "https://www.google.cf/*"
          "http://www.google.cf/*"
          "https://www.google.cg/*"
          "http://www.google.cg/*"
          "https://www.google.ch/*"
          "http://www.google.ch/*"
          "https://www.google.ci/*"
          "http://www.google.ci/*"
          "https://www.google.co.ck/*"
          "http://www.google.co.ck/*"
          "https://www.google.cl/*"
          "http://www.google.cl/*"
          "https://www.google.cm/*"
          "http://www.google.cm/*"
          "https://www.google.cn/*"
          "http://www.google.cn/*"
          "https://www.google.com.co/*"
          "http://www.google.com.co/*"
          "https://www.google.co.cr/*"
          "http://www.google.co.cr/*"
          "https://www.google.com.cu/*"
          "http://www.google.com.cu/*"
          "https://www.google.cv/*"
          "http://www.google.cv/*"
          "https://www.google.com.cy/*"
          "http://www.google.com.cy/*"
          "https://www.google.cz/*"
          "http://www.google.cz/*"
          "https://www.google.de/*"
          "http://www.google.de/*"
          "https://www.google.dj/*"
          "http://www.google.dj/*"
          "https://www.google.dk/*"
          "http://www.google.dk/*"
          "https://www.google.dm/*"
          "http://www.google.dm/*"
          "https://www.google.com.do/*"
          "http://www.google.com.do/*"
          "https://www.google.dz/*"
          "http://www.google.dz/*"
          "https://www.google.com.ec/*"
          "http://www.google.com.ec/*"
          "https://www.google.ee/*"
          "http://www.google.ee/*"
          "https://www.google.com.eg/*"
          "http://www.google.com.eg/*"
          "https://www.google.es/*"
          "http://www.google.es/*"
          "https://www.google.com.et/*"
          "http://www.google.com.et/*"
          "https://www.google.fi/*"
          "http://www.google.fi/*"
          "https://www.google.com.fj/*"
          "http://www.google.com.fj/*"
          "https://www.google.fm/*"
          "http://www.google.fm/*"
          "https://www.google.fr/*"
          "http://www.google.fr/*"
          "https://www.google.ga/*"
          "http://www.google.ga/*"
          "https://www.google.ge/*"
          "http://www.google.ge/*"
          "https://www.google.gg/*"
          "http://www.google.gg/*"
          "https://www.google.com.gh/*"
          "http://www.google.com.gh/*"
          "https://www.google.com.gi/*"
          "http://www.google.com.gi/*"
          "https://www.google.gl/*"
          "http://www.google.gl/*"
          "https://www.google.gm/*"
          "http://www.google.gm/*"
          "https://www.google.gr/*"
          "http://www.google.gr/*"
          "https://www.google.com.gt/*"
          "http://www.google.com.gt/*"
          "https://www.google.gy/*"
          "http://www.google.gy/*"
          "https://www.google.com.hk/*"
          "http://www.google.com.hk/*"
          "https://www.google.hn/*"
          "http://www.google.hn/*"
          "https://www.google.hr/*"
          "http://www.google.hr/*"
          "https://www.google.ht/*"
          "http://www.google.ht/*"
          "https://www.google.hu/*"
          "http://www.google.hu/*"
          "https://www.google.co.id/*"
          "http://www.google.co.id/*"
          "https://www.google.ie/*"
          "http://www.google.ie/*"
          "https://www.google.co.il/*"
          "http://www.google.co.il/*"
          "https://www.google.im/*"
          "http://www.google.im/*"
          "https://www.google.co.in/*"
          "http://www.google.co.in/*"
          "https://www.google.iq/*"
          "http://www.google.iq/*"
          "https://www.google.is/*"
          "http://www.google.is/*"
          "https://www.google.it/*"
          "http://www.google.it/*"
          "https://www.google.je/*"
          "http://www.google.je/*"
          "https://www.google.com.jm/*"
          "http://www.google.com.jm/*"
          "https://www.google.jo/*"
          "http://www.google.jo/*"
          "https://www.google.co.jp/*"
          "http://www.google.co.jp/*"
          "https://www.google.co.ke/*"
          "http://www.google.co.ke/*"
          "https://www.google.com.kh/*"
          "http://www.google.com.kh/*"
          "https://www.google.ki/*"
          "http://www.google.ki/*"
          "https://www.google.kg/*"
          "http://www.google.kg/*"
          "https://www.google.co.kr/*"
          "http://www.google.co.kr/*"
          "https://www.google.com.kw/*"
          "http://www.google.com.kw/*"
          "https://www.google.kz/*"
          "http://www.google.kz/*"
          "https://www.google.la/*"
          "http://www.google.la/*"
          "https://www.google.com.lb/*"
          "http://www.google.com.lb/*"
          "https://www.google.li/*"
          "http://www.google.li/*"
          "https://www.google.lk/*"
          "http://www.google.lk/*"
          "https://www.google.co.ls/*"
          "http://www.google.co.ls/*"
          "https://www.google.lt/*"
          "http://www.google.lt/*"
          "https://www.google.lu/*"
          "http://www.google.lu/*"
          "https://www.google.lv/*"
          "http://www.google.lv/*"
          "https://www.google.com.ly/*"
          "http://www.google.com.ly/*"
          "https://www.google.co.ma/*"
          "http://www.google.co.ma/*"
          "https://www.google.md/*"
          "http://www.google.md/*"
          "https://www.google.me/*"
          "http://www.google.me/*"
          "https://www.google.mg/*"
          "http://www.google.mg/*"
          "https://www.google.mk/*"
          "http://www.google.mk/*"
          "https://www.google.ml/*"
          "http://www.google.ml/*"
          "https://www.google.com.mm/*"
          "http://www.google.com.mm/*"
          "https://www.google.mn/*"
          "http://www.google.mn/*"
          "https://www.google.ms/*"
          "http://www.google.ms/*"
          "https://www.google.com.mt/*"
          "http://www.google.com.mt/*"
          "https://www.google.mu/*"
          "http://www.google.mu/*"
          "https://www.google.mv/*"
          "http://www.google.mv/*"
          "https://www.google.mw/*"
          "http://www.google.mw/*"
          "https://www.google.com.mx/*"
          "http://www.google.com.mx/*"
          "https://www.google.com.my/*"
          "http://www.google.com.my/*"
          "https://www.google.co.mz/*"
          "http://www.google.co.mz/*"
          "https://www.google.com.na/*"
          "http://www.google.com.na/*"
          "https://www.google.com.ng/*"
          "http://www.google.com.ng/*"
          "https://www.google.com.ni/*"
          "http://www.google.com.ni/*"
          "https://www.google.ne/*"
          "http://www.google.ne/*"
          "https://www.google.nl/*"
          "http://www.google.nl/*"
          "https://www.google.no/*"
          "http://www.google.no/*"
          "https://www.google.com.np/*"
          "http://www.google.com.np/*"
          "https://www.google.nr/*"
          "http://www.google.nr/*"
          "https://www.google.nu/*"
          "http://www.google.nu/*"
          "https://www.google.co.nz/*"
          "http://www.google.co.nz/*"
          "https://www.google.com.om/*"
          "http://www.google.com.om/*"
          "https://www.google.com.pa/*"
          "http://www.google.com.pa/*"
          "https://www.google.com.pe/*"
          "http://www.google.com.pe/*"
          "https://www.google.com.pg/*"
          "http://www.google.com.pg/*"
          "https://www.google.com.ph/*"
          "http://www.google.com.ph/*"
          "https://www.google.com.pk/*"
          "http://www.google.com.pk/*"
          "https://www.google.pl/*"
          "http://www.google.pl/*"
          "https://www.google.pn/*"
          "http://www.google.pn/*"
          "https://www.google.com.pr/*"
          "http://www.google.com.pr/*"
          "https://www.google.ps/*"
          "http://www.google.ps/*"
          "https://www.google.pt/*"
          "http://www.google.pt/*"
          "https://www.google.com.py/*"
          "http://www.google.com.py/*"
          "https://www.google.com.qa/*"
          "http://www.google.com.qa/*"
          "https://www.google.ro/*"
          "http://www.google.ro/*"
          "https://www.google.ru/*"
          "http://www.google.ru/*"
          "https://www.google.rw/*"
          "http://www.google.rw/*"
          "https://www.google.com.sa/*"
          "http://www.google.com.sa/*"
          "https://www.google.com.sb/*"
          "http://www.google.com.sb/*"
          "https://www.google.sc/*"
          "http://www.google.sc/*"
          "https://www.google.se/*"
          "http://www.google.se/*"
          "https://www.google.com.sg/*"
          "http://www.google.com.sg/*"
          "https://www.google.sh/*"
          "http://www.google.sh/*"
          "https://www.google.si/*"
          "http://www.google.si/*"
          "https://www.google.sk/*"
          "http://www.google.sk/*"
          "https://www.google.com.sl/*"
          "http://www.google.com.sl/*"
          "https://www.google.sn/*"
          "http://www.google.sn/*"
          "https://www.google.so/*"
          "http://www.google.so/*"
          "https://www.google.sm/*"
          "http://www.google.sm/*"
          "https://www.google.sr/*"
          "http://www.google.sr/*"
          "https://www.google.st/*"
          "http://www.google.st/*"
          "https://www.google.com.sv/*"
          "http://www.google.com.sv/*"
          "https://www.google.td/*"
          "http://www.google.td/*"
          "https://www.google.tg/*"
          "http://www.google.tg/*"
          "https://www.google.co.th/*"
          "http://www.google.co.th/*"
          "https://www.google.com.tj/*"
          "http://www.google.com.tj/*"
          "https://www.google.tl/*"
          "http://www.google.tl/*"
          "https://www.google.tm/*"
          "http://www.google.tm/*"
          "https://www.google.tn/*"
          "http://www.google.tn/*"
          "https://www.google.to/*"
          "http://www.google.to/*"
          "https://www.google.com.tr/*"
          "http://www.google.com.tr/*"
          "https://www.google.tt/*"
          "http://www.google.tt/*"
          "https://www.google.com.tw/*"
          "http://www.google.com.tw/*"
          "https://www.google.co.tz/*"
          "http://www.google.co.tz/*"
          "https://www.google.com.ua/*"
          "http://www.google.com.ua/*"
          "https://www.google.co.ug/*"
          "http://www.google.co.ug/*"
          "https://www.google.co.uk/*"
          "http://www.google.co.uk/*"
          "https://www.google.com.uy/*"
          "http://www.google.com.uy/*"
          "https://www.google.co.uz/*"
          "http://www.google.co.uz/*"
          "https://www.google.com.vc/*"
          "http://www.google.com.vc/*"
          "https://www.google.co.ve/*"
          "http://www.google.co.ve/*"
          "https://www.google.vg/*"
          "http://www.google.vg/*"
          "https://www.google.co.vi/*"
          "http://www.google.co.vi/*"
          "https://www.google.com.vn/*"
          "http://www.google.com.vn/*"
          "https://www.google.vu/*"
          "http://www.google.vu/*"
          "https://www.google.ws/*"
          "http://www.google.ws/*"
          "https://www.google.rs/*"
          "http://www.google.rs/*"
          "https://www.google.co.za/*"
          "http://www.google.co.za/*"
          "https://www.google.co.zm/*"
          "http://www.google.co.zm/*"
          "https://www.google.co.zw/*"
          "http://www.google.co.zw/*"
          "https://www.google.cat/*"
          "http://www.google.cat/*"
        ];
        platforms = platforms.all;
      };
    };
    "privacy-pass" = buildFirefoxXpiAddon {
      pname = "privacy-pass";
      version = "4.0.2";
      addonId = "{48748554-4c01-49e8-94af-79662bf34d50}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4258867/privacy_pass-4.0.2.xpi";
      sha256 = "48e832600bdd47639d17ed2a99ea74d2eb1e12728e8b743a7057420b7f72102f";
      meta = with lib;
      {
        homepage = "https://github.com/cloudflare/pp-browser-extension";
        description = "Client support for Privacy Pass anonymous authorization protocol.";
        license = licenses.bsd2;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "privacy-possum" = buildFirefoxXpiAddon {
      pname = "privacy-possum";
      version = "2019.7.18";
      addonId = "woop-NoopscooPsnSXQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3360398/privacy_possum-2019.7.18.xpi";
      sha256 = "0840a8c443e25d8a65da22ce1b557216456b900a699b3541e42e1b47e8cb6c0e";
      meta = with lib;
      {
        homepage = "https://github.com/cowlicks/privacypossum";
        description = "Privacy Possum monkey wrenches common commercial tracking methods by reducing and falsifying the data gathered by tracking companies.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "http://*/*"
          "https://*/*"
          "contextMenus"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "storage"
          "cookies"
          "*://twitter.com/*"
          "*://tweetdeck.twitter.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "privacy-redirect" = buildFirefoxXpiAddon {
      pname = "privacy-redirect";
      version = "1.1.49";
      addonId = "{b7f9d2cd-d772-4302-8c3f-eb941af36f76}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3815058/privacy_redirect-1.1.49.xpi";
      sha256 = "9f1cf6e58fa3f86d180b5b99549fa666fa853a827c48cb231558566b0c1c3c75";
      meta = with lib;
      {
        homepage = "https://github.com/SimonBrazell/privacy-redirect";
        description = "Redirects Twitter, YouTube, Instagram and more to privacy friendly alternatives.";
        license = licenses.gpl3Plus;
        mozPermissions = [
          "storage"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "*://twitter.com/*"
          "*://www.twitter.com/*"
          "*://mobile.twitter.com/*"
          "*://pbs.twimg.com/*"
          "*://video.twimg.com/*"
          "*://invidious.snopyta.org/*"
          "*://invidious.xyz/*"
          "*://invidious.kavin.rocks/*"
          "*://tube.connect.cafe/*"
          "*://invidious.zapashcanon.fr/*"
          "*://invidiou.site/*"
          "*://vid.mint.lgbt/*"
          "*://invidious.site/*"
          "*://yewtu.be/*"
          "*://invidious.tube/*"
          "*://invidious.silkky.cloud/*"
          "*://invidious.himiko.cloud/*"
          "*://inv.skyn3t.in/*"
          "*://tube.incognet.io/*"
          "*://invidious.tinfoil-hat.net/*"
          "*://invidious.namazso.eu/*"
          "*://vid.puffyan.us/*"
          "*://dev.viewtube.io/*"
          "*://invidious.048596.xyz/*"
          "*://fz253lmuao3strwbfbmx46yu7acac2jz27iwtorgmbqlkurlclmancad.onion/*"
          "*://qklhadlycap4cnod.onion/*"
          "*://c7hqkpkpemu6e7emz5b4vyz7idjgdvgaaa3dyimmeojqbgpea3xqjoid.onion/*"
          "*://w6ijuptxiku4xpnnaetxvnkc5vqcdu7mgns2u77qefoixi63vbvnpnqd.onion/*"
        ];
        platforms = platforms.all;
      };
    };
    "privacy-settings" = buildFirefoxXpiAddon {
      pname = "privacy-settings";
      version = "0.3.8resigned1";
      addonId = "jid1-CKHySAadH4nL6Q@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270684/privacy_settings-0.3.8resigned1.xpi";
      sha256 = "23cbe4241a4feca21d33b615399916bafddc4b1fc9f92ecbfc7640208588daff";
      meta = with lib;
      {
        homepage = "http://add0n.com/privacy-settings.html";
        description = "Alter Firefox's built-in privacy settings easily with a toolbar panel.";
        license = licenses.mpl20;
        mozPermissions = [ "privacy" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "private-relay" = buildFirefoxXpiAddon {
      pname = "private-relay";
      version = "2.8.1";
      addonId = "private-relay@firefox.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4205650/private_relay-2.8.1.xpi";
      sha256 = "4a85ddc1cd19d2a156c4efe76225d424c0c32e700ab77601f8c1e50d7975cd9d";
      meta = with lib;
      {
        homepage = "https://relay.firefox.com/";
        description = "Firefox Relay lets you generate email aliases that forward to your real inbox. Use it to hide your real email address and protect yourself from hackers and unwanted mail.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "menus"
          "contextMenus"
          "https://relay.firefox.com/"
          "https://relay.firefox.com/**"
          "https://relay.firefox.com/accounts/profile/**"
          "https://relay.firefox.com/accounts/settings/**"
        ];
        platforms = platforms.all;
      };
    };
    "profile-switcher" = buildFirefoxXpiAddon {
      pname = "profile-switcher";
      version = "1.3.1";
      addonId = "profile-switcher-ff@nd.ax";
      url = "https://addons.mozilla.org/firefox/downloads/file/3945999/profile_switcher-1.3.1.xpi";
      sha256 = "80ca410ad883a0a2a2dc50cb1f74474dd829223ce106a5911120461c30e4e64f";
      meta = with lib;
      {
        homepage = "https://github.com/null-dev/firefox-profile-switcher";
        description = "Create, manage and switch between browser profiles seamlessly.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" "nativeMessaging" "tabs" ];
        platforms = platforms.all;
      };
    };
    "prometheus-formatter" = buildFirefoxXpiAddon {
      pname = "prometheus-formatter";
      version = "3.1.0";
      addonId = "prometheus-formatter@frederic-hemberger.de";
      url = "https://addons.mozilla.org/firefox/downloads/file/4166150/prometheus_formatter-3.1.0.xpi";
      sha256 = "2796e4a48ee6f813859ea252fe50dd0ab895bb570da4cb3caa3702d2f3413b22";
      meta = with lib;
      {
        homepage = "https://github.com/fhemberger/prometheus-formatter";
        description = "Makes plain Prometheus/OpenMetrics endpoints easier to read.";
        license = licenses.mit;
        mozPermissions = [ "storage" "http://*/*" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "promnesia" = buildFirefoxXpiAddon {
      pname = "promnesia";
      version = "1.3.1";
      addonId = "{07c6b8e1-94f7-4bbf-8e91-26c0a8992ab5}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298718/promnesia-1.3.1.xpi";
      sha256 = "1e98071a762cf21f772bab6fcd84fd878924cc5e58529edb2a93a509d1a2a6c1";
      meta = with lib;
      {
        homepage = "https://github.com/karlicoss/promnesia";
        description = "Enhancement of your browsing history";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "webNavigation"
          "contextMenus"
          "notifications"
          "bookmarks"
          "history"
          "scripting"
          "file:///*"
          "http://*/"
          "https://*/"
        ];
        platforms = platforms.all;
      };
    };
    "pronoundb" = buildFirefoxXpiAddon {
      pname = "pronoundb";
      version = "0.14.5";
      addonId = "firefox-addon@pronoundb.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4286934/pronoundb-0.14.5.xpi";
      sha256 = "db1d30550fb5cb27502d09e971b2c1e234167f6e0ad9aeb15ec78efb59c0a8d3";
      meta = with lib;
      {
        homepage = "https://pronoundb.org";
        description = "PronounDB is a browser extension that helps people know each other's pronouns easily and instantly. Whether hanging out on a Twitch chat, or on any of the supported platforms, PronounDB will make your life easier.";
        license = licenses.bsd2;
        mozPermissions = [
          "activeTab"
          "storage"
          "https://*.pronoundb.org/*"
          "https://*.discord.com/*"
          "https://*.github.com/*"
          "https://*.modrinth.com/*"
          "https://*.twitch.tv/*"
          "https://*.twitter.com/*"
          "https://*.x.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "proton-pass" = buildFirefoxXpiAddon {
      pname = "proton-pass";
      version = "1.21.2";
      addonId = "78272b6fa58f4a1abaac99321d503a20@proton.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4332444/proton_pass-1.21.2.xpi";
      sha256 = "d2131f06e0fd5b364476ad02147cae30c8c8642076769c46f9aa7ad557439948";
      meta = with lib;
      {
        homepage = "https://proton.me";
        description = "Free and unlimited password manager to keep your login credentials safe and manage them directly in your browser.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "alarms"
          "scripting"
          "storage"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "https://*/*"
          "http://*/*"
          "https://account.proton.me/*"
          "https://pass.proton.me/*"
        ];
        platforms = platforms.all;
      };
    };
    "proton-vpn" = buildFirefoxXpiAddon {
      pname = "proton-vpn";
      version = "1.2.2";
      addonId = "vpn@proton.ch";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336346/proton_vpn_firefox_extension-1.2.2.xpi";
      sha256 = "3fcdddf8db3904dfee167dfa2597a99d15a81708f99f15dcd7a894cafbd7bcd3";
      meta = with lib;
      {
        homepage = "https://protonvpn.com/";
        description = "Secure your internet and protect your online privacy in one click.";
        license = licenses.gpl3;
        mozPermissions = [
          "idle"
          "notifications"
          "privacy"
          "scripting"
          "storage"
          "tabs"
          "webRequest"
          "activeTab"
          "webRequestBlocking"
          "https://account.protonvpn.com/*"
          "https://account.proton.me/*"
        ];
        platforms = platforms.all;
      };
    };
    "protondb-for-steam" = buildFirefoxXpiAddon {
      pname = "protondb-for-steam";
      version = "2.1.0";
      addonId = "{30280527-c46c-4e03-bb16-2e3ed94fa57c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4195217/protondb_for_steam-2.1.0.xpi";
      sha256 = "3ed7824503a3184450326b09a71d086c2bdfce04d6384ca3b02f0cf800db5852";
      meta = with lib;
      {
        homepage = "https://github.com/tryton-vanmeer/ProtonDB-for-Steam#protondb-for-steam";
        description = "Shows ratings from <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/f8db0358d96c1a46b9a77aa02190de811e40819051b1d42dd013c17276046ffd/http%3A//protondb.com\" rel=\"nofollow\">protondb.com</a> on Steam";
        license = licenses.lgpl3;
        mozPermissions = [
          "https://www.protondb.com/*"
          "https://store.steampowered.com/app/*"
          "https://store.steampowered.com/wishlist/*"
          "https://steamcommunity.com/id/*/games"
          "https://steamcommunity.com/id/*/games?tab=*"
        ];
        platforms = platforms.all;
      };
    };
    "protoots" = buildFirefoxXpiAddon {
      pname = "protoots";
      version = "1.2.3";
      addonId = "protoots@trans.rights";
      url = "https://addons.mozilla.org/firefox/downloads/file/4291719/protoots-1.2.3.xpi";
      sha256 = "c0e1fe1e08d38f253a7144d178a17d3dd9e4ea75ce3164cfa99b3193626c8912";
      meta = with lib;
      {
        homepage = "https://github.com/ItsVipra/ProToots";
        description = "puts pronouns next to usernames on mastodon";
        license = licenses.osl3;
        mozPermissions = [
          "storage"
          "https://en.pronouns.page/api/*"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "purpleadblock" = buildFirefoxXpiAddon {
      pname = "purpleadblock";
      version = "2.6.6";
      addonId = "{a7399979-5203-4489-9861-b168187b52e1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4324056/purpleadblock-2.6.6.xpi";
      sha256 = "87650ac6f4c07dec3868047d03afd11493aaca8f4d9f6d0d42747fe14ec365b7";
      meta = with lib;
      {
        description = "Purple AdBlock is a adblock for <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/45c441178c2a4b8efed92eca84091cb4171a2c325f054a4351164ea9d10563f8/http%3A//Twitch.tv\" rel=\"nofollow\">Twitch.tv</a>";
        license = licenses.gpl3;
        mozPermissions = [ "https://*.twitch.tv/*" "activeTab" "storage" ];
        platforms = platforms.all;
      };
    };
    "pushbullet" = buildFirefoxXpiAddon {
      pname = "pushbullet";
      version = "366";
      addonId = "jid1-BYcQOfYfmBMd9A@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4088745/pushbullet-366.xpi";
      sha256 = "556d3b42a71ac1c032cbcd0c91106a5773fbd07fb65a3362a908a89823cad96f";
      meta = with lib;
      {
        homepage = "https://www.pushbullet.com";
        description = "Pushbullet enables you to see your calls and texts on your computer and easily send links and files from your computer to phone.";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "contextMenus"
          "cookies"
          "notifications"
          "idle"
          "https://*.pushbullet.com/*"
          "http://*.pushbullet.com/*"
          "http://localhost:20807/*"
        ];
        platforms = platforms.all;
      };
    };
    "pywalfox" = buildFirefoxXpiAddon {
      pname = "pywalfox";
      version = "2.0.11";
      addonId = "pywalfox@frewacom.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4061156/pywalfox-2.0.11.xpi";
      sha256 = "df6eab2d2224b23f442d5d6044f4718ec153c197c96191e2bfe0addb2b088137";
      meta = with lib;
      {
        homepage = "https://github.com/frewacom/Pywalfox";
        description = "Dynamic theming of Firefox using your Pywal colors";
        license = licenses.mpl20;
        mozPermissions = [
          "nativeMessaging"
          "theme"
          "storage"
          "tabs"
          "alarms"
          "*://*.duckduckgo.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "qr-code-address-bar" = buildFirefoxXpiAddon {
      pname = "qr-code-address-bar";
      version = "1.3";
      addonId = "{a218c3db-51ef-4170-804b-eb053fc9a2cd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3851152/qr_code_address_bar-1.3.xpi";
      sha256 = "d847f3c402289663492e8e4b18341f4777b84631bc4b6d96f27d1f10b7208c0b";
      meta = with lib;
      {
        description = "Adds a button to the address bar to get the current url as a qr code";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" ];
        platforms = platforms.all;
      };
    };
    "rabattcorner" = buildFirefoxXpiAddon {
      pname = "rabattcorner";
      version = "2.1.6.4";
      addonId = "jid1-7eplFgLu6atoog@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4172250/rabattcorner-2.1.6.4.xpi";
      sha256 = "a6b670359aa2013d8b616e5c3dad4b5cc4f1450784d8568c3bd93eb8bbf43e67";
      meta = with lib;
      {
        homepage = "https://www.rabattcorner.ch";
        description = "Mit der Rabattcorner Cashback-Erinnerung kannst du beim Online-Shoppen bei über 800 Partnern Geld zurück bekommen.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "cookies"
          "alarms"
          "http://*/*"
          "https://*/*"
          "browser_action"
          "https://*.rabattcorner.ch/visit/*"
          "https://*.rabattcorner.ch/special_offer/visit/*"
          "https://*.rabattcorner.ch/*"
        ];
        platforms = platforms.all;
      };
    };
    "raindropio" = buildFirefoxXpiAddon {
      pname = "raindropio";
      version = "6.6.24";
      addonId = "jid0-adyhmvsP91nUO8pRv0Mn2VKeB84@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4269679/raindropio-6.6.24.xpi";
      sha256 = "4c86f5e78e06e7b5978c1f20ce1be659a871556188ef4669b9a2aa826bab660f";
      meta = with lib;
      {
        homepage = "https://raindrop.io";
        description = "All-in-one bookmark manager";
        license = licenses.mpl20;
        mozPermissions = [ "contextMenus" "activeTab" "scripting" "storage" ];
        platforms = platforms.all;
      };
    };
    "re-enable-right-click" = buildFirefoxXpiAddon {
      pname = "re-enable-right-click";
      version = "0.5.6.2";
      addonId = "{278b0ae0-da9d-4cc6-be81-5aa7f3202672}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4300505/re_enable_right_click-0.5.6.2.xpi";
      sha256 = "c948a2e46d72d27d03323aa4b2a9ed88eeb00c83c84d4bf79063a854ed3baa00";
      meta = with lib;
      {
        homepage = "http://add0n.com/allow-right-click.html";
        description = "Re-enable the possibility to use the context menu on sites that overrides it";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "activeTab"
          "contextMenus"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "react-devtools" = buildFirefoxXpiAddon {
      pname = "react-devtools";
      version = "5.3.1";
      addonId = "@react-devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4314064/react_devtools-5.3.1.xpi";
      sha256 = "376f33d9b1219341eb8be16578b406b3f371c11aace55f68fcad4847e818f076";
      meta = with lib;
      {
        homepage = "https://github.com/facebook/react";
        description = "React Developer Tools is a tool that allows you to inspect a React tree, including the component hierarchy, props, state, and more. To get started, just open the Firefox devtools and switch to the \"⚛️ Components\" or \"⚛️ Profiler\" tab.";
        license = licenses.mit;
        mozPermissions = [
          "file:///*"
          "http://*/*"
          "https://*/*"
          "clipboardWrite"
          "scripting"
          "devtools"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "read-aloud" = buildFirefoxXpiAddon {
      pname = "read-aloud";
      version = "1.72.0";
      addonId = "{ddc62400-f22d-4dd3-8b4a-05837de53c2e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4302360/read_aloud-1.72.0.xpi";
      sha256 = "2505f32c8b4b55504b08de9f432665040a5d71f65ddd664c7aaf9f23eb573fc2";
      meta = with lib;
      {
        description = "Read out loud the current web-page article with one click. Supports 40+ languages.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "menus"
          "identity"
          "storage"
          "https://translate.google.com/"
          "https://piper.ttstool.com/"
        ];
        platforms = platforms.all;
      };
    };
    "recoll-we" = buildFirefoxXpiAddon {
      pname = "recoll-we";
      version = "2.1";
      addonId = "recoll-we@recoll-org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3750059/recoll_we-2.1.xpi";
      sha256 = "6297f0ee0d167fa9815f0265d3e87ecac0a001d8c5b30e50d947e3b1996b4fd6";
      meta = with lib;
      {
        homepage = "https://www.lesbonscomptes.com/recoll/";
        description = "Enqueue visited WEB pages for storage and indexing by Recoll.";
        license = licenses.gpl2;
        mozPermissions = [
          "activeTab"
          "tabs"
          "webNavigation"
          "contextMenus"
          "notifications"
          "storage"
          "downloads"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "reddit-comment-collapser" = buildFirefoxXpiAddon {
      pname = "reddit-comment-collapser";
      version = "5.1.2resigned1";
      addonId = "{a5b2e636-07e5-4331-93c1-6cf4074356c8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272010/reddit_comment_collapser-5.1.2resigned1.xpi";
      sha256 = "e29404a50c858d191584eb53c05bca1bd9648d8163cea8e6ed3b99b1faf4990b";
      meta = with lib;
      {
        homepage = "https://github.com/tom-james-watson/reddit-comment-collapser";
        description = "A more elegant solution for collapsing reddit comment trees.\n\nReddit Comment Collapser is free and open source. Contributions welcome - <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/782747fdec02dc86f6a710b2169056074fd7d1c2e56583eddf9168d2be14e7a0/https%3A//github.com/tom-james-watson/reddit-comment-collapser\" rel=\"nofollow\">https://github.com/tom-james-watson/reddit-comment-collapser</a>";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "https://*.reddit.com/"
          "http://*.reddit.com/*/comments/*"
          "https://*.reddit.com/*/comments/*"
        ];
        platforms = platforms.all;
      };
    };
    "reddit-enhancement-suite" = buildFirefoxXpiAddon {
      pname = "reddit-enhancement-suite";
      version = "5.24.6";
      addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4282309/reddit_enhancement_suite-5.24.6.xpi";
      sha256 = "8065fa2d119e6f6bde2a0d7d2e1696e45709a1583de63bb700eeaa31876f146a";
      meta = with lib;
      {
        homepage = "https://redditenhancementsuite.com/";
        description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
        license = licenses.gpl3;
        mozPermissions = [
          "https://*.reddit.com/*"
          "cookies"
          "identity"
          "tabs"
          "history"
          "storage"
          "scripting"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "reddit-moderator-toolbox" = buildFirefoxXpiAddon {
      pname = "reddit-moderator-toolbox";
      version = "6.1.15";
      addonId = "yes@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4320830/reddit_moderator_toolbox-6.1.15.xpi";
      sha256 = "f2ca6c38f3f0163afd027c7feea00ac3e2141a4a5a757af69dbabfa4636dd367";
      meta = with lib;
      {
        homepage = "https://www.reddit.com/r/toolbox";
        description = "This is bundled extension of the /r/toolbox moderator tools for <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/42268797a19a16a2ebeeda77cca1eda5a48db14e0cff56de4fab35eaef484216/http%3A//reddit.com\">reddit.com</a>\n\nContaining:\n\nMod Tools Enhanced\nMod Button\nMod Mail Pro\nMod Domain Tagger\nToolbox Notifier\nMod User Notes\nToolbox Config";
        license = licenses.asl20;
        mozPermissions = [
          "https://*.reddit.com/"
          "https://old.reddit.com/"
          "https://oauth.reddit.com/"
          "https://mod.reddit.com/"
          "cookies"
          "tabs"
          "storage"
          "unlimitedStorage"
          "notifications"
          "webNavigation"
          "alarms"
          "https://*.reddit.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "redirector" = buildFirefoxXpiAddon {
      pname = "redirector";
      version = "3.5.3";
      addonId = "redirector@einaregilsson.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3535009/redirector-3.5.3.xpi";
      sha256 = "eddbd3d5944e748d0bd6ecb6d9e9cf0e0c02dced6f42db21aab64190e71c0f71";
      meta = with lib;
      {
        homepage = "http://einaregilsson.com/redirector/";
        description = "Automatically redirects to user-defined urls on certain pages";
        license = licenses.mit;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "storage"
          "tabs"
          "http://*/*"
          "https://*/*"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "reduxdevtools" = buildFirefoxXpiAddon {
      pname = "reduxdevtools";
      version = "3.1.6";
      addonId = "extension@redux.devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4209147/reduxdevtools-3.1.6.xpi";
      sha256 = "2149809b62c5524b241e89204ef271c665b9da46ceeaa0fd93132ed338aaaa26";
      meta = with lib;
      {
        homepage = "https://github.com/reduxjs/redux-devtools";
        description = "DevTools for Redux with actions history, undo and replay.";
        license = licenses.mit;
        mozPermissions = [
          "notifications"
          "contextMenus"
          "tabs"
          "storage"
          "file:///*"
          "http://*/*"
          "https://*/*"
          "devtools"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "refined-github" = buildFirefoxXpiAddon {
      pname = "refined-github";
      version = "24.8.20";
      addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339819/refined_github-24.8.20.xpi";
      sha256 = "03904cb0ee8b64eca5aea373914bedeb6aede40b5799f09088b7c3a703063c17";
      meta = with lib;
      {
        homepage = "https://github.com/refined-github/refined-github";
        description = "Simplifies the GitHub interface and adds many useful features.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "scripting"
          "contextMenus"
          "activeTab"
          "alarms"
          "https://github.com/*"
          "https://api.github.com/*"
          "https://gist.github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "refined-saved-replies" = buildFirefoxXpiAddon {
      pname = "refined-saved-replies";
      version = "0.5";
      addonId = "refined-saved-replies@joshuakgoldberg.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4196051/refined_saved_replies-0.5.xpi";
      sha256 = "3d138dc371dd17cc85b8305a0afd39ee678c9588ef8bcc823e6010c74f332c61";
      meta = with lib;
      {
        description = "Adds a repository's .github/replies.yml to GitHub's Saved Replies feature.";
        license = licenses.mit;
        mozPermissions = [
          "https://github.com/*/*/issues/*"
          "https://github.com/*/*/pull/*"
        ];
        platforms = platforms.all;
      };
    };
    "remove-youtube-s-suggestions" = buildFirefoxXpiAddon {
      pname = "remove-youtube-s-suggestions";
      version = "4.3.60";
      addonId = "{21f1ba12-47e1-4a9b-ad4e-3a0260bbeb26}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4299785/remove_youtube_s_suggestions-4.3.60.xpi";
      sha256 = "08b95b5875a3ee32c1cd3dc9895b969085cf5e18f7a04246c697dd5f2fff4f47";
      meta = with lib;
      {
        homepage = "https://lawrencehook.com/rys/";
        description = "Stop the YouTube rabbit hole. Customize YouTube's user interface to be less engaging.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "*://*.youtube.com/*" ];
        platforms = platforms.all;
      };
    };
    "return-youtube-dislikes" = buildFirefoxXpiAddon {
      pname = "return-youtube-dislikes";
      version = "3.0.0.16";
      addonId = "{762f9885-5a13-4abd-9c77-433dcd38b8fd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4308076/return_youtube_dislikes-3.0.0.16.xpi";
      sha256 = "46356bf30f6a06fee3497133c0b69a39ab09f393fa7d4c0e4d1c89cee1d020e4";
      meta = with lib;
      {
        description = "Returns ability to see dislike statistics on youtube";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "*://*.youtube.com/*"
          "storage"
          "*://returnyoutubedislikeapi.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "rsf-censorship-detector" = buildFirefoxXpiAddon {
      pname = "rsf-censorship-detector";
      version = "2.0.0";
      addonId = "collateral-freedom@rsf.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4148074/rsf_censorship_detector-2.0.0.xpi";
      sha256 = "d0b8acc119ad9a7540442535324c9ef6aed7f85a6511149058c504e6e0000135";
      meta = with lib;
      {
        homepage = "https://github.com/RSF-RWB/collateralfreedom";
        description = "Find access to blocked websites";
        license = licenses.gpl3;
        mozPermissions = [ "storage" "tabs" ];
        platforms = platforms.all;
      };
    };
    "rsshub-radar" = buildFirefoxXpiAddon {
      pname = "rsshub-radar";
      version = "2.0.19";
      addonId = "i@diygod.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4250199/rsshub_radar-2.0.19.xpi";
      sha256 = "ecaf49abe0ddd7bdd4655245354c3fce87b94ac6e7fac90d4d4b74ffaa34ec3c";
      meta = with lib;
      {
        homepage = "https://github.com/DIYgod/RSSHub-Radar";
        description = "Easily find and subscribe to RSS and RSSHub.";
        mozPermissions = [ "storage" "tabs" "offscreen" "alarms" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "rsspreview" = buildFirefoxXpiAddon {
      pname = "rsspreview";
      version = "3.32.1";
      addonId = "{7799824a-30fe-4c67-8b3e-7094ea203c94}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4288011/rsspreview-3.32.1.xpi";
      sha256 = "6c5c67279b30e9fb5d9a7579a8f8d8c9b0f66790cadf177d1324e51cca9dfe64";
      meta = with lib;
      {
        homepage = "https://github.com/aureliendavid/rsspreview";
        description = "Preview RSS feeds in-browser";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "rust-search-extension" = buildFirefoxXpiAddon {
      pname = "rust-search-extension";
      version = "1.13.0";
      addonId = "{04188724-64d3-497b-a4fd-7caffe6eab29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4236369/rust_search_extension-1.13.0.xpi";
      sha256 = "59ddefdab6cd7dbe5fb368fe6fac2eace052060bf9357dd39bc9c7ff3439be13";
      meta = with lib;
      {
        homepage = "https://rust.extension.sh";
        description = "The ultimate search extension for Rust\n\nSearch std docs, crates, builtin attributes, official books, and error codes, etc in your address bar instantly.\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4af48e3229ba03b454fb9b352a7e5a4c038e1bcc6721bf744b781a5e96b9e798/https%3A//rust.extension.sh\" rel=\"nofollow\">https://rust.extension.sh</a>";
        license = licenses.mpl20;
        mozPermissions = [
          "*://crates.io/api/v1/crates/*"
          "https://rust.extension.sh/*"
          "storage"
          "unlimitedStorage"
          "*://docs.rs/*"
          "*://doc.rust-lang.org/*"
          "*://doc.rust-lang.org/nightly/nightly-rustc/*"
          "*://rust.extension.sh/update"
        ];
        platforms = platforms.all;
      };
    };
    "saka-key" = buildFirefoxXpiAddon {
      pname = "saka-key";
      version = "1.26.3";
      addonId = "{46104586-98c3-407e-a349-290c9ff3594d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3582006/saka_key-1.26.3.xpi";
      sha256 = "9ea95fcd919100928ad5ca0dccad3700d627c28be2f2132f2e247e14009a4696";
      meta = with lib;
      {
        homepage = "https://github.com/lusakasa/saka-key";
        description = "A keyboard interface to the web";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "activeTab"
          "sessions"
          "storage"
          "unlimitedStorage"
          "<all_urls>"
          "clipboardRead"
          "downloads"
          "cookies"
        ];
        platforms = platforms.all;
      };
    };
    "save-page-we" = buildFirefoxXpiAddon {
      pname = "save-page-we";
      version = "28.11";
      addonId = "savepage-we@DW-dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/4091842/save_page_we-28.11.xpi";
      sha256 = "26f9504711fa44014f8cb57053d0900153b446e62308ccf1f3d989c287771cfd";
      meta = with lib;
      {
        description = "Save a complete web page (as currently displayed) as a single HTML file that can be opened in any browser. Save a single page, multiple selected pages or a list of page URLs. Automate saving from command line.";
        license = licenses.gpl2;
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "file:///*"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "downloads"
          "contextMenus"
          "notifications"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "screenshot-capture-annotate" = buildFirefoxXpiAddon {
      pname = "screenshot-capture-annotate";
      version = "4.3.7.13";
      addonId = "jid0-GXjLLfbCoAx0LcltEdFrEkQdQPI@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4222998/screenshot_capture_annotate-4.3.7.13.xpi";
      sha256 = "d23fb0409975a10614703fe94c3f2071b9a2bd5eb3234b02a67b3149230f3b3a";
      meta = with lib;
      {
        homepage = "https://www.awesomescreenshot.com";
        description = "Full page screen capture and screen recorder 2 in 1. Share screencast video instantly.";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "tabs"
          "downloads"
          "<all_urls>"
          "storage"
          "unlimitedStorage"
          "clipboardWrite"
          "cookies"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "scroll_anywhere" = buildFirefoxXpiAddon {
      pname = "scroll_anywhere";
      version = "9.2";
      addonId = "juraj.masiar@gmail.com_ScrollAnywhere";
      url = "https://addons.mozilla.org/firefox/downloads/file/3938344/scroll_anywhere-9.2.xpi";
      sha256 = "614a7a13baad91a4015347ede83b66ae3e182679932cfc4ccd8fa5604ab38e91";
      meta = with lib;
      {
        homepage = "https://fastaddons.com/";
        description = "Scroll page without touching scroll-bar! \nPress Middle (Right / Left) mouse button anywhere on the page to scroll just like with scrollbar.\n\nFeatures also:\n- \"grab and drag\" scrolling\n- customizable scrollbars!\n- the Momentum auto-scroll";
        license = {
          shortName = "scroll-anywhere";
          fullName = "Scroll Anywhere License";
          url = "https://github.com/fastaddons/ScrollAnywhere/blob/master/LICENSE";
          free = false;
        };
        mozPermissions = [ "alarms" "storage" "activeTab" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "search-by-image" = buildFirefoxXpiAddon {
      pname = "search-by-image";
      version = "7.1.0";
      addonId = "{2e5ff8c8-32fe-46d0-9fc8-6b8986621f3c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4309046/search_by_image-7.1.0.xpi";
      sha256 = "5255f873a71331bb466e32712adc650a1fb6343b4011faddb8646f3ab2abefae";
      meta = with lib;
      {
        homepage = "https://github.com/dessant/search-by-image#readme";
        description = "A powerful reverse image search tool, with support for various search engines, such as Google, Bing, Yandex, Baidu and TinEye.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "tabs"
          "activeTab"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file:///*"
        ];
        platforms = platforms.all;
      };
    };
    "search-engines-helper" = buildFirefoxXpiAddon {
      pname = "search-engines-helper";
      version = "3.5.0";
      addonId = "{65a2d764-7358-455b-930d-5afa86fb5ed0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4162613/search_engines_helper-3.5.0.xpi";
      sha256 = "f03822b7589cc2fbf6124e2dc1f48c52ec3674189936111e5336ed9e0b0622c8";
      meta = with lib;
      {
        homepage = "https://github.com/soufianesakhi/firefox-search-engines-helper";
        description = "Add a custom search engine and export/import all the search urls and icon urls for all search engines added to Firefox.";
        license = licenses.mit;
        mozPermissions = [ "contextMenus" "activeTab" "notifications" ];
        platforms = platforms.all;
      };
    };
    "shaarli" = buildFirefoxXpiAddon {
      pname = "shaarli";
      version = "2.0.1resigned1";
      addonId = "shaarli@imirhil.fr";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270418/shaarli-2.0.1resigned1.xpi";
      sha256 = "9181c2c3ae085518a9ffe95a592a84ed20942605c78b556b42aed05e1e03f5fa";
      meta = with lib;
      {
        description = "Cette extension remplace le bookmarklet officiel et intègre un bouton « Shaarli » dans la barre des modules.";
        license = licenses.gpl3;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "shinigami-eyes" = buildFirefoxXpiAddon {
      pname = "shinigami-eyes";
      version = "1.0.35";
      addonId = "shinigamieyes@shinigamieyes";
      url = "https://addons.mozilla.org/firefox/downloads/file/4297364/shinigami_eyes-1.0.35.xpi";
      sha256 = "da46596783f8cb55c24feb8920843825263178d61be483d588e4e47496f9ca9d";
      meta = with lib;
      {
        homepage = "https://shinigami-eyes.github.io/";
        description = "Highlights transphobic/anti-LGBT and trans-friendly subreddits/facebook pages/groups with different colors.\n\nSupports Reddit, Twitter, Facebook, Tumblr, Medium, YouTube, Wikipedia, search engine results and all sites with Disqus comments.";
        license = licenses.mit;
        mozPermissions = [
          "contextMenus"
          "storage"
          "*://*/*"
          "*://*.facebook.com/*"
          "*://*.youtube.com/*"
          "*://*.reddit.com/*"
          "*://*.twitter.com/*"
          "*://*.x.com/*"
          "*://*.medium.com/*"
          "*://disqus.com/*"
          "*://*.tumblr.com/*"
          "*://*.wikipedia.org/*"
          "*://*.rationalwiki.org/*"
          "*://cohost.org/*"
          "*://*.bsky.app/*"
          "*://anarchism.space/*"
          "*://aus.social/*"
          "*://c.im/*"
          "*://chaos.social/*"
          "*://eightpoint.app/*"
          "*://eldritch.cafe/*"
          "*://fosstodon.org/*"
          "*://hachyderm.io/*"
          "*://infosec.exchange/*"
          "*://kolektiva.social/*"
          "*://mas.to/*"
          "*://masto.ai/*"
          "*://chaosfem.tw/*"
          "*://mastodon.art/*"
          "*://mastodon.cloud/*"
          "*://mastodon.green/*"
          "*://mastodon.ie/*"
          "*://mastodon.nz/*"
          "*://mastodon.online/*"
          "*://mastodon.scot/*"
          "*://mastodon.social/*"
          "*://mastodon.world/*"
          "*://mastodon.xyz/*"
          "*://mastodonapp.uk/*"
          "*://meow.social/*"
          "*://mstdn.ca/*"
          "*://mstdn.jp/*"
          "*://mstdn.social/*"
          "*://octodon.social/*"
          "*://ohai.social/*"
          "*://pixelfed.social/*"
          "*://queer.party/*"
          "*://sfba.social/*"
          "*://social.transsafety.network/*"
          "*://tech.lgbt/*"
          "*://techhub.social/*"
          "*://toot.cat/*"
          "*://toot.community/*"
          "*://toot.wales/*"
          "*://vulpine.club/*"
          "*://wandering.shop/*"
          "*://lgbtqia.space/*"
          "*://*.threads.net/*"
          "*://duckduckgo.com/*"
          "*://*.bing.com/*"
          "*://*.google.ar/*"
          "*://*.google.at/*"
          "*://*.google.be/*"
          "*://*.google.ca/*"
          "*://*.google.ch/*"
          "*://*.google.co.uk/*"
          "*://*.google.com/*"
          "*://*.google.de/*"
          "*://*.google.dk/*"
          "*://*.google.es/*"
          "*://*.google.fi/*"
          "*://*.google.fr/*"
          "*://*.google.is/*"
          "*://*.google.it/*"
          "*://*.google.no/*"
          "*://*.google.pt/*"
          "*://*.google.se/*"
          "https://x.com/*"
          "https://twitter.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "side-view" = buildFirefoxXpiAddon {
      pname = "side-view";
      version = "0.4.6424resigned1";
      addonId = "side-view@mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4276258/side_view-0.4.6424resigned1.xpi";
      sha256 = "2e981086adcbe1ceb803854a3e71a607144777b818cf50eafb4a22a2fb0c7f22";
      meta = with lib;
      {
        homepage = "https://github.com/mozilla/side-view/";
        description = "Open a mobile view of a page in the sidebar";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "tabs"
          "<all_urls>"
          "storage"
          "contextMenus"
          "webRequest"
          "webRequestBlocking"
          "bookmarks"
          "management"
        ];
        platforms = platforms.all;
      };
    };
    "sidebartabs" = buildFirefoxXpiAddon {
      pname = "sidebartabs";
      version = "14.0.0";
      addonId = "sidebarTabs@asamuzak.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333366/sidebartabs-14.0.0.xpi";
      sha256 = "53fe364b0d7780b24daeea51879c9477f7eff6a68d075ac6425ecb3948410618";
      meta = with lib;
      {
        homepage = "https://github.com/asamuzaK/sidebarTabs";
        description = "Emulate tabs in sidebar and display tabs vertically. In addition, group tabs and collapse / expand them.";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "bookmarks"
          "contextualIdentities"
          "cookies"
          "management"
          "menus"
          "menus.overrideContext"
          "search"
          "sessions"
          "storage"
          "tabs"
          "theme"
        ];
        platforms = platforms.all;
      };
    };
    "sidebery" = buildFirefoxXpiAddon {
      pname = "sidebery";
      version = "5.2.0";
      addonId = "{3c078156-979c-498b-8990-85f7987dd929}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4246774/sidebery-5.2.0.xpi";
      sha256 = "a5dd94227daafeec200dc2052fae6daa74d1ba261c267b71c03faa4cc4a6fa14";
      meta = with lib;
      {
        homepage = "https://github.com/mbnuqw/sidebery";
        description = "Vertical tabs tree and bookmarks in sidebar with advanced containers configuration, grouping and many other features.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "tabs"
          "contextualIdentities"
          "cookies"
          "storage"
          "unlimitedStorage"
          "sessions"
          "menus"
          "menus.overrideContext"
          "search"
          "theme"
        ];
        platforms = platforms.all;
      };
    };
    "simple-dark-vlasak" = buildFirefoxXpiAddon {
      pname = "simple-dark-vlasak";
      version = "3.0";
      addonId = "{02be1381-a3d9-460c-b209-5b39b42e2b30}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4041660/simple_dark_vlasak-3.0.xpi";
      sha256 = "050b392afd274003cb33d36eb625e98dc63e6a16fdfb9600d56e184d637af753";
      meta = with lib;
      {
        description = "A simple dark high contrast theme with a tone of cyan.";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "simple-tab-groups" = buildFirefoxXpiAddon {
      pname = "simple-tab-groups";
      version = "5.2";
      addonId = "simple-tab-groups@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4103800/simple_tab_groups-5.2.xpi";
      sha256 = "b56f30cea753a9c4d1c0e078c0e5e635f1885ea7e40305cee59b9e145fad0a6c";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create, modify, and quickly change tab groups";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "tabHide"
          "notifications"
          "menus"
          "contextualIdentities"
          "cookies"
          "sessions"
          "downloads"
          "management"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "storage"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "simple-translate" = buildFirefoxXpiAddon {
      pname = "simple-translate";
      version = "3.0.0";
      addonId = "simple-translate@sienori";
      url = "https://addons.mozilla.org/firefox/downloads/file/4286113/simple_translate-3.0.0.xpi";
      sha256 = "c9e36d1d8e32a223da367bdc83133f2436103eb5f16460c7cce2096376e78b68";
      meta = with lib;
      {
        homepage = "https://simple-translate.sienori.com";
        description = "Quickly translate selected or typed text on web pages. Supports Google Translate and DeepL API.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "contextMenus"
          "http://*/*"
          "https://*/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "simplelogin" = buildFirefoxXpiAddon {
      pname = "simplelogin";
      version = "3.0.5";
      addonId = "addon@simplelogin";
      url = "https://addons.mozilla.org/firefox/downloads/file/4332232/simplelogin-3.0.5.xpi";
      sha256 = "4c91de2e6ab4ca0f0ffc43e3f4b2b37d243bf311f7c690d0af6c2b44767fcee8";
      meta = with lib;
      {
        homepage = "https://simplelogin.io";
        description = "Create a different email for each website to hide your real email. Guard your inbox against spams, phishing. Protect your privacy.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "storage"
          "contextMenus"
          "scripting"
          "tabs"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "single-file" = buildFirefoxXpiAddon {
      pname = "single-file";
      version = "1.22.61";
      addonId = "{531906d3-e22f-4a6c-a102-8057b88a1a63}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339360/single_file-1.22.61.xpi";
      sha256 = "002d164403923be95f616f11c6582708ca982b569659d9949176738bace6be0f";
      meta = with lib;
      {
        homepage = "https://github.com/gildas-lormeau/SingleFile";
        description = "Save an entire web page—including images and styling—as a single HTML file.";
        license = licenses.agpl3Plus;
        mozPermissions = [
          "identity"
          "menus"
          "downloads"
          "storage"
          "tabs"
          "<all_urls>"
          "devtools"
        ];
        platforms = platforms.all;
      };
    };
    "skip-redirect" = buildFirefoxXpiAddon {
      pname = "skip-redirect";
      version = "2.3.6";
      addonId = "skipredirect@sblask";
      url = "https://addons.mozilla.org/firefox/downloads/file/3920533/skip_redirect-2.3.6.xpi";
      sha256 = "dbe8950245c1f475c5c1c6daab89c79b83ba4680621c91e80f15be7b09b618ae";
      meta = with lib;
      {
        description = "Some web pages use intermediary pages before redirecting to a final page. This add-on tries to extract the final url from the intermediary url and goes there straight away if successful.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "clipboardWrite"
          "contextMenus"
          "notifications"
          "storage"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "smart-referer" = buildFirefoxXpiAddon {
      pname = "smart-referer";
      version = "0.2.15";
      addonId = "smart-referer@meh.paranoid.pk";
      url = "https://addons.mozilla.org/firefox/downloads/file/3470999/smart_referer-0.2.15.xpi";
      sha256 = "4751ab905c4d9d13b1f21c9fc179efed7d248e3476effb5b393268b46855bf1a";
      meta = with lib;
      {
        homepage = "https://gitlab.com/smart-referer/smart-referer";
        description = "Improve your privacy by limiting Referer information leak!\n\nPlease note that this extension has been largely superseded by better browser defaults for websites using HTTPS (almost all) and is not maintained anymore.";
        license = licenses.wtfpl;
        mozPermissions = [
          "menus"
          "storage"
          "theme"
          "webRequest"
          "webRequestBlocking"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "snoozetabs" = buildFirefoxXpiAddon {
      pname = "snoozetabs";
      version = "1.1.2resigned1";
      addonId = "snoozetabs@mozilla.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4271788/snoozetabs-1.1.2resigned1.xpi";
      sha256 = "1fe70147bb741f06c2ab9b2fbc5c1bff752703c4f9086b0edf83af673afa4b8c";
      meta = with lib;
      {
        homepage = "https://github.com/bwinton/SnoozeTabs#readme";
        description = "Snooze Tabs help you focus your attention online, whether you want to remove distractions for now or save something for later. Hit the snooze icon to dismiss tabs you don’t want now, and set an alarm to bring them back when you need them.";
        license = licenses.mpl20;
        mozPermissions = [
          "alarms"
          "bookmarks"
          "contextMenus"
          "notifications"
          "storage"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "snowflake" = buildFirefoxXpiAddon {
      pname = "snowflake";
      version = "0.8.4";
      addonId = "{b11bea1f-a888-4332-8d8a-cec2be7d24b9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4310769/torproject_snowflake-0.8.4.xpi";
      sha256 = "a6b11d5250e6c30c9a0d4b1caaedc446a7fb31bb78088fa14554fdd1e3741cb3";
      meta = with lib;
      {
        homepage = "https://snowflake.torproject.org/";
        description = "Help people in censored countries access the Internet without restrictions. Once you install and enable the extension, wait for the snowflake icon to turn green, this means a censored user is connecting through your extension to access the Internet!";
        license = licenses.bsd3;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "solarized-light" = buildFirefoxXpiAddon {
      pname = "solarized-light";
      version = "2.0";
      addonId = "{71864fba-a0ac-47f5-a514-e5f3378b9c12}";
      url = "https://addons.mozilla.org/firefox/downloads/file/2765354/solarized_light-2.0.xpi";
      sha256 = "3462da8a4a39ae1c93b9a0a5172f8690d2dd66baa856f240862d5943cad49c67";
      meta = with lib;
      {
        description = "Uh-oh!   Looks like somebody left Firefox out in the sun.\n\nCredit to Ethan Schoonover for the color scheme.\n\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/84fc2a9889cf35b10644adef8f36c2af5f4beaf19955759761bceb2d20cfd051/http%3A//ethanschoonover.com/solarized\" rel=\"nofollow\">http://ethanschoonover.com/solarized</a>";
        license = {
          shortName = "all-rights-reserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/wiki/All_rights_reserved";
          free = false;
        };
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "solarized_fox" = buildFirefoxXpiAddon {
      pname = "solarized_fox";
      version = "3.0";
      addonId = "{059437b3-6db8-4703-a620-624be085a10c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3924784/solarized_fox-3.0.xpi";
      sha256 = "79ccb6f0d773fc3e10e249c16db0a20e03d96ae34913261d8aad2c4e40fa7f01";
      meta = with lib;
      {
        description = "Solarized Dark theme, using blue backgrounds with yellow highlights";
        license = licenses.cc-by-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "sourcegraph" = buildFirefoxXpiAddon {
      pname = "sourcegraph";
      version = "23.4.14.1343";
      addonId = "sourcegraph-for-firefox@sourcegraph.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4097469/sourcegraph_for_firefox-23.4.14.1343.xpi";
      sha256 = "fa02236d75a82a7c47dabd0272b77dd9a74e8069563415a7b8b2b9d37c36d20b";
      meta = with lib;
      {
        description = "Adds code intelligence to GitHub, GitLab, Bitbucket Server, and Phabricator: hovers, definitions, references. Supports 20+ languages.";
        mozPermissions = [
          "activeTab"
          "storage"
          "contextMenus"
          "https://github.com/*"
          "https://sourcegraph.com/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "sponsorblock" = buildFirefoxXpiAddon {
      pname = "sponsorblock";
      version = "5.7";
      addonId = "sponsorBlocker@ajay.app";
      url = "https://addons.mozilla.org/firefox/downloads/file/4308094/sponsorblock-5.7.xpi";
      sha256 = "05b7fadde5718cd44520a86e6b38b10816762df763767ef4bb879112ed77caae";
      meta = with lib;
      {
        homepage = "https://sponsor.ajay.app";
        description = "Easily skip YouTube video sponsors. When you visit a YouTube video, the extension will check the database for reported sponsors and automatically skip known sponsors. You can also report sponsors in videos. Other browsers: https://sponsor.ajay.app";
        license = licenses.lgpl3;
        mozPermissions = [
          "storage"
          "scripting"
          "https://sponsor.ajay.app/*"
          "https://*.youtube.com/*"
          "https://www.youtube-nocookie.com/embed/*"
        ];
        platforms = platforms.all;
      };
    };
    "startpage-private-search" = buildFirefoxXpiAddon {
      pname = "startpage-private-search";
      version = "2.0.1";
      addonId = "{20fc2e06-e3e4-4b2b-812b-ab431220cada}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4204954/startpage_private_search-2.0.1.xpi";
      sha256 = "53d5e5868f1175b43675534b0628ad27ab79c7448c52b71963518fd8320c50b7";
      meta = with lib;
      {
        description = "This extension protects users from being tracked while allowing them to search the web in complete private mode.";
        license = licenses.gpl3;
        mozPermissions = [
          "search"
          "storage"
          "webRequest"
          "webRequestBlocking"
          "https://*.startpage.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "startup-bookmarks" = buildFirefoxXpiAddon {
      pname = "startup-bookmarks";
      version = "1.7.14";
      addonId = "{d026fcc5-d071-4ddd-bbc0-66ccf814693d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4260058/startup_bookmarks-1.7.14.xpi";
      sha256 = "9cb45f679be853caa10401db8c95e2a1c79691775d85eadda21e48da10f86396";
      meta = with lib;
      {
        homepage = "https://github.com/igorlogius/startup-bookmarks";
        description = "Open a set of bookmarks as tabs on browser startup by simply selecting a bookmark folder which contains them.";
        license = licenses.bsd2;
        mozPermissions = [ "tabs" "bookmarks" "storage" ];
        platforms = platforms.all;
      };
    };
    "statshunters" = buildFirefoxXpiAddon {
      pname = "statshunters";
      version = "2.0.4";
      addonId = "browserextension@statshunters.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4257665/statshunters-2.0.4.xpi";
      sha256 = "039709ca3cfe6cc9346dfcb081f1e647cd61756531a2d3a8150d6e1c7d539add";
      meta = with lib;
      {
        homepage = "https://www.statshunters.com";
        description = "Show tiles on Strava, Komoot, Brouter, RWGPS, Garmin and <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/a56490334fb034ba5435e2c86dcc1b7178abea1af61a6939f8af580c0b188354/http%3A//Mapy.cz\" rel=\"nofollow\">Mapy.cz</a> route builder";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "https://www.strava.com/routes/new*"
          "https://www.strava.com/routes/*/edit*"
          "https://www.komoot.com/*"
          "https://www.komoot.nl/*"
          "https://www.komoot.es/*"
          "https://www.komoot.it/*"
          "https://www.komoot.fr/*"
          "https://www.komoot.de/*"
          "http://brouter.de/brouter-web/*"
          "http://www.brouter.de/brouter-web/*"
          "https://brouter.de/brouter-web/*"
          "https://www.brouter.de/brouter-web/*"
          "https://brouter.m11n.de/*"
          "https://bikerouter.de/*"
          "https://brouter.damsy.net/*"
          "https://ridewithgps.com/routes/new*"
          "https://ridewithgps.com/routes/*/edit*"
          "https://connect.garmin.com/modern/*"
          "https://connect.garmin.com/modern/course/create*"
          "https://connect.garmin.com/modern/course/*"
          "https://cycle.travel/map"
          "https://*.mapy.cz/*"
          "https://web.locusmap.app/*"
          "https://dashboard.hammerhead.io/*"
          "https://dynamic.watch/*/plan*"
          "https://dynamic.watch/plan/*"
          "https://mapa-turystyczna.pl/*"
          "https://alltrails.com/explore/map/*"
          "https://www.alltrails.com/explore/map/*"
          "https://www.alltrails.com/*/explore/map/*"
          "https://openrunner.com/*"
          "https://www.openrunner.com/*"
          "https://gpx.studio/*"
        ];
        platforms = platforms.all;
      };
    };
    "steam-database" = buildFirefoxXpiAddon {
      pname = "steam-database";
      version = "4.5";
      addonId = "firefox-extension@steamdb.info";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326369/steam_database-4.5.xpi";
      sha256 = "f4dff61843f35adfc2cf8e353e25a6a8e37836b770b4d1a35f48114f1cd21328";
      meta = with lib;
      {
        homepage = "https://steamdb.info/";
        description = "Adds SteamDB links and new features on the Steam store and community. View lowest game prices and stats.";
        license = licenses.bsd3;
        mozPermissions = [
          "storage"
          "https://steamdb.info/*"
          "https://store.steampowered.com/*"
          "https://store.steampowered.com/app/*"
          "https://store.steampowered.com/news/app/*"
          "https://store.steampowered.com/account/licenses*"
          "https://store.steampowered.com/account/registerkey*"
          "https://store.steampowered.com/sub/*"
          "https://store.steampowered.com/bundle/*"
          "https://store.steampowered.com/widget/*"
          "https://store.steampowered.com/app/*/agecheck"
          "https://store.steampowered.com/agecheck/*"
          "https://store.steampowered.com/explore*"
          "https://steamcommunity.com/app/*"
          "https://steamcommunity.com/sharedfiles/filedetails*"
          "https://steamcommunity.com/workshop/filedetails*"
          "https://steamcommunity.com/workshop/browse*"
          "https://steamcommunity.com/workshop/discussions*"
          "https://steamcommunity.com/*"
          "https://steamcommunity.com/id/*"
          "https://steamcommunity.com/profiles/*"
          "https://steamcommunity.com/id/*/inventory*"
          "https://steamcommunity.com/profiles/*/inventory*"
          "https://steamcommunity.com/id/*/stats*"
          "https://steamcommunity.com/profiles/*/stats*"
          "https://steamcommunity.com/stats/*/achievements*"
          "https://steamcommunity.com/tradeoffer/*"
          "https://steamcommunity.com/id/*/recommended/*"
          "https://steamcommunity.com/profiles/*/recommended/*"
          "https://steamcommunity.com/id/*/badges*"
          "https://steamcommunity.com/profiles/*/badges*"
          "https://steamcommunity.com/id/*/gamecards/*"
          "https://steamcommunity.com/profiles/*/gamecards/*"
          "https://steamcommunity.com/market/multibuy*"
          "https://steamcommunity.com/games/*"
          "https://steamcommunity.com/sharedfiles/*"
          "https://steamcommunity.com/workshop/*"
          "https://steamcommunity.com/market/*"
        ];
        platforms = platforms.all;
      };
    };
    "streetpass-for-mastodon" = buildFirefoxXpiAddon {
      pname = "streetpass-for-mastodon";
      version = "2024.1";
      addonId = "streetpass@streetpass.social";
      url = "https://addons.mozilla.org/firefox/downloads/file/4239700/streetpass_for_mastodon-2024.1.xpi";
      sha256 = "9e711dbed82ef3e2444327007738c6474320347679683936539c4f2454116028";
      meta = with lib;
      {
        homepage = "https://streetpass.social/";
        description = "Find your people on Mastodon";
        license = licenses.mit;
        mozPermissions = [ "storage" "https://*/*" "http://*/*" ];
        platforms = platforms.all;
      };
    };
    "stylebot-web" = buildFirefoxXpiAddon {
      pname = "stylebot-web";
      version = "3.1.3";
      addonId = "{52bda3fd-dc48-4b3d-a7b9-58af57879f1e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3979493/stylebot_web-3.1.3.xpi";
      sha256 = "f3f606dff3b77e1ad7ab0b516d6ce7196af119604af240a5881af4dfe0e27f4e";
      meta = with lib;
      {
        homepage = "https://stylebot.dev/";
        description = "Change the appearance of the web instantly";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "storage"
          "identity"
          "contextMenus"
          "unlimitedStorage"
          "https://drive.google.com/*"
          "https://www.googleapis.com/*"
          "https://fonts.googleapis.com/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "stylus" = buildFirefoxXpiAddon {
      pname = "stylus";
      version = "1.5.51";
      addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4338993/styl_us-1.5.51.xpi";
      sha256 = "4d7c184af2d81f40c35f33c77c4040dc4205908dbcf65e7c99fafd7d26e4814f";
      meta = with lib;
      {
        homepage = "https://add0n.com/stylus.html";
        description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
        license = licenses.gpl3;
        mozPermissions = [
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "alarms"
          "<all_urls>"
          "http://userstyles.org/*"
          "https://userstyles.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "substitoot" = buildFirefoxXpiAddon {
      pname = "substitoot";
      version = "0.7.2.0";
      addonId = "substitoot@kludge.guru";
      url = "https://addons.mozilla.org/firefox/downloads/file/4236602/substitoot-0.7.2.0.xpi";
      sha256 = "d5ab92a848e479bc1149b980554b18c32efb765ed34023a7aa0a33a68567aa02";
      meta = with lib;
      {
        homepage = "https://github.com/virtulis/substitoot";
        description = "A transparent toot fetcher for Mastodon. Loads missing replies to boosted toots in your feed directly from the source server.\n\nMake sure you set your home instance(s) in preferences to start using this!";
        license = licenses.mit;
        mozPermissions = [ "storage" "scripting" ];
        platforms = platforms.all;
      };
    };
    "surfingkeys" = buildFirefoxXpiAddon {
      pname = "surfingkeys";
      version = "1.16.1";
      addonId = "{a8332c60-5b6d-41ee-bfc8-e9bb331d34ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4221189/surfingkeys_ff-1.16.1.xpi";
      sha256 = "c146480eeda13fc86e806a2c9e02ff7d70280a82639cdaf14103d65ad51d5646";
      meta = with lib;
      {
        homepage = "https://github.com/brookhong/Surfingkeys";
        description = "Rich shortcuts for you to click links / switch tabs / scroll pages or DIVs / capture full page or DIV etc, let you use the browser like vim, plus an embed vim editor.\n\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/353ad9268cb5cdeb3fa107ea4d154273229fe2ffe8a28e3fda510de7f6ddd75f/https%3A//github.com/brookhong/Surfingkeys\" rel=\"nofollow\">https://github.com/brookhong/Surfingkeys</a>";
        license = licenses.mit;
        mozPermissions = [
          "nativeMessaging"
          "<all_urls>"
          "tabs"
          "history"
          "bookmarks"
          "storage"
          "sessions"
          "downloads"
          "topSites"
          "clipboardRead"
          "clipboardWrite"
          "cookies"
          "contextualIdentities"
        ];
        platforms = platforms.all;
      };
    };
    "swedish-dictionary" = buildFirefoxXpiAddon {
      pname = "swedish-dictionary";
      version = "1.21";
      addonId = "swedish@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3539390/gorans_hemmasnickrade_ordli-1.21.xpi";
      sha256 = "7d2ce7f7bfb65cfb5dd4138686acd977cf589c6ce91fc342ae5e2e26a09d1dbe";
      meta = with lib;
      {
        description = "Swedish spell-check dictionary.";
        license = licenses.lgpl3;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "switchyomega" = buildFirefoxXpiAddon {
      pname = "switchyomega";
      version = "2.5.10";
      addonId = "switchyomega@feliscatus.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/848109/switchyomega-2.5.10.xpi";
      sha256 = "dfefc2da59eeb2e92a32fc75fb05426feeea4c39ee01b7a797395ed29ed7cf77";
      meta = with lib;
      {
        homepage = "https://github.com/FelisCatus/SwitchyOmega";
        description = "Manage and switch between multiple proxies quickly &amp; easily.";
        license = licenses.gpl3;
        mozPermissions = [
          "proxy"
          "tabs"
          "alarms"
          "storage"
          "webRequest"
          "downloads"
          "webRequestBlocking"
          "contextMenus"
          "http://*/*"
          "https://*/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "tab-counter-plus" = buildFirefoxXpiAddon {
      pname = "tab-counter-plus";
      version = "3.4";
      addonId = "tab-counter-plus@Loirooriol";
      url = "https://addons.mozilla.org/firefox/downloads/file/3722375/tab_counter_plus-3.4.xpi";
      sha256 = "98e0d3b5c7f27c4811106a9564fd0fbd13c70856bb6f91bff25c6e9905fbdeb5";
      meta = with lib;
      {
        homepage = "https://github.com/Loirooriol/tab-counter-plus";
        description = "Shows the number of tabs in each window. Efficient and customizable.";
        license = licenses.asl20;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "tab-reloader" = buildFirefoxXpiAddon {
      pname = "tab-reloader";
      version = "0.6.3";
      addonId = "jid0-bnmfwWw2w2w4e4edvcdDbnMhdVg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4265440/tab_reloader-0.6.3.xpi";
      sha256 = "086102fb5938197f81d9b2c35c2cd1ded8624ff6e5fe94609acc3e31501d26b2";
      meta = with lib;
      {
        homepage = "https://webextension.org/listing/tab-reloader.html";
        description = "An easy-to-use tab reloader with custom reloading time settings for individual tabs";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "tabs"
          "alarms"
          "webNavigation"
          "contextMenus"
          "idle"
        ];
        platforms = platforms.all;
      };
    };
    "tab-retitle" = buildFirefoxXpiAddon {
      pname = "tab-retitle";
      version = "1.5.2";
      addonId = "{e855175b-f84a-429d-85d6-a61831c8291c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3468684/tab_retitle-1.5.2.xpi";
      sha256 = "3f4171f19bd37b5f6198f5db8beb49ca2c5c5cc426fae5435ca04c3533f4e22a";
      meta = with lib;
      {
        description = "Change tab titles easily!\n+ Persists through sessions\n+ Domain level re-titling\n+ Regex replacements\nand much more!";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "tabs"
          "storage"
          "<all_urls>"
          "contextMenus"
          "bookmarks"
        ];
        platforms = platforms.all;
      };
    };
    "tab-session-manager" = buildFirefoxXpiAddon {
      pname = "tab-session-manager";
      version = "7.0.1";
      addonId = "Tab-Session-Manager@sienori";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298614/tab_session_manager-7.0.1.xpi";
      sha256 = "936499a7cf42fabb26a283125cc5ec8c0615407722f3c7e9fb9f6d3ee5916890";
      meta = with lib;
      {
        homepage = "https://tab-session-manager.sienori.com/";
        description = "Save and restore the state of windows and tabs. It also supports automatic saving and cloud sync.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "unlimitedStorage"
          "tabs"
          "cookies"
          "downloads"
          "identity"
          "alarms"
        ];
        platforms = platforms.all;
      };
    };
    "tab-stash" = buildFirefoxXpiAddon {
      pname = "tab-stash";
      version = "3.0.1";
      addonId = "tab-stash@condordes.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4308185/tab_stash-3.0.1.xpi";
      sha256 = "0b26f417f14049faef7286cdb7658986961ed9e8ca36fddbd8ed79647d0a672e";
      meta = with lib;
      {
        homepage = "https://josh-berry.github.io/tab-stash/";
        description = "Easily save and organize batches of tabs as bookmarks. Clear your tabs, clear your mind. Only for Firefox.";
        license = licenses.mpl20;
        mozPermissions = [
          "sessions"
          "tabs"
          "tabHide"
          "bookmarks"
          "contextMenus"
          "browserSettings"
          "storage"
          "unlimitedStorage"
          "contextualIdentities"
          "cookies"
        ];
        platforms = platforms.all;
      };
    };
    "tab-unload-for-tree-style-tab" = buildFirefoxXpiAddon {
      pname = "tab-unload-for-tree-style-tab";
      version = "6.17";
      addonId = "{7aa0a466-58f8-427b-8cd2-e94645c4edc2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326243/tab_unload_for_tree_style_tab-6.17.xpi";
      sha256 = "243f48da0a7dd0834cb816bbdf0c16c503b3f5f273f9826478a70af11718bdca";
      meta = with lib;
      {
        homepage = "https://github.com/Lej77/tab-unloader-for-tree-style-tab";
        description = "Tab unload options for Tree Style Tab.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" "menus" ];
        platforms = platforms.all;
      };
    };
    "tabcenter-reborn" = buildFirefoxXpiAddon {
      pname = "tabcenter-reborn";
      version = "2.3.1";
      addonId = "tabcenter-reborn@ariasuni";
      url = "https://addons.mozilla.org/firefox/downloads/file/3829515/tabcenter_reborn-2.3.1.xpi";
      sha256 = "d31c693c896045d4326c7e9e0152830820009bd60f62b36043bb322cab713f34";
      meta = with lib;
      {
        homepage = "https://framagit.org/ariasuni/tabcenter-reborn";
        description = "Simple and powerful vertical tab bar";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "bookmarks"
          "browserSettings"
          "contextualIdentities"
          "cookies"
          "menus"
          "menus.overrideContext"
          "notifications"
          "search"
          "sessions"
          "storage"
          "tabs"
          "theme"
          "webNavigation"
        ];
        platforms = platforms.all;
      };
    };
    "tabliss" = buildFirefoxXpiAddon {
      pname = "tabliss";
      version = "2.6.0";
      addonId = "extension@tabliss.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3940751/tabliss-2.6.0.xpi";
      sha256 = "de766810f234b1c13ffdb7047ae6cbf06ed79c3d08b51a07e4766fadff089c0f";
      meta = with lib;
      {
        homepage = "https://tabliss.io";
        description = "A beautiful New Tab page with many customisable backgrounds and widgets that does not require any permissions.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "tampermonkey" = buildFirefoxXpiAddon {
      pname = "tampermonkey";
      version = "5.1.1";
      addonId = "firefox@tampermonkey.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4282688/tampermonkey-5.1.1.xpi";
      sha256 = "31e05e99fdd3f196bb5e529173f94b0a7b5a18727818a8d2a10ea375df8550ed";
      meta = with lib;
      {
        homepage = "https://tampermonkey.net";
        description = "Tampermonkey is the world's most popular userscript manager.";
        license = {
          shortName = "tampermonkey";
          fullName = "End-User License Agreement for Tampermonkey";
          url = "https://addons.mozilla.org/en-US/firefox/addon/tampermonkey/eula/";
          free = false;
        };
        mozPermissions = [
          "alarms"
          "notifications"
          "tabs"
          "idle"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "unlimitedStorage"
          "storage"
          "contextMenus"
          "clipboardWrite"
          "cookies"
          "downloads"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "temporary-containers" = buildFirefoxXpiAddon {
      pname = "temporary-containers";
      version = "1.9.2";
      addonId = "{c607c8df-14a7-4f28-894f-29e8722976af}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3723251/temporary_containers-1.9.2.xpi";
      sha256 = "3340a08c29be7c83bd0fea3fc27fde71e4608a4532d932114b439aa690e7edc0";
      meta = with lib;
      {
        homepage = "https://github.com/stoically/temporary-containers";
        description = "Open tabs, websites, and links in automatically managed disposable containers which isolate the data websites store (cookies, storage, and more) from each other, enhancing your privacy and security while you browse.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "management"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "terms-of-service-didnt-read" = buildFirefoxXpiAddon {
      pname = "terms-of-service-didnt-read";
      version = "5.0.0.1";
      addonId = "jid0-3GUEt1r69sQNSrca5p8kx9Ezc3U@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4279478/terms_of_service_didnt_read-5.0.0.1.xpi";
      sha256 = "af3c74588f44b36d539b6a8cf9928bfd13fe75a462f269c1eb2e3dae73e47134";
      meta = with lib;
      {
        homepage = "http://tosdr.org";
        description = "“I have read and agree to the Terms” is the biggest lie on the web. We aim to fix that. Get informed instantly about websites' terms &amp; privacy policies, with ratings and summaries from the <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/782d4bf373fdb0bc94e6bd037af1bf988ce2274e2210205e7e5b8bbd291b0997/http%3A//www.tosdr.org\" rel=\"nofollow\">www.tosdr.org</a> initiative.";
        license = licenses.agpl3Plus;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "tetrio-plus" = buildFirefoxXpiAddon {
      pname = "tetrio-plus";
      version = "0.26.0";
      addonId = "tetrio-plus@example.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4224653/tetrio_plus-0.26.0.xpi";
      sha256 = "65fc3803914285d81d05bcd8b914d565352b7bf2fd62e6102182cc9850e2ae2e";
      meta = with lib;
      {
        description = "Custom skins, background music, sound effects, (animated) backgrounds, input display, and touch control support for <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/d94d4f4d9a39d7847f4259e0053e02794a2d7361e70cf03a773b53993e17363d/http%3A//TETR.IO\" rel=\"nofollow\">TETR.IO</a>.";
        license = licenses.mit;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "unlimitedStorage"
          "storage"
          "*://*.tetr.io/*"
          "https://tetr.io/*"
        ];
        platforms = platforms.all;
      };
    };
    "text-contrast-for-dark-themes" = buildFirefoxXpiAddon {
      pname = "text-contrast-for-dark-themes";
      version = "2.1.6";
      addonId = "jid1-nMVE2oP40qeQDQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3462082/text_contrast_for_dark_themes-2.1.6.xpi";
      sha256 = "e768c13a4fa10e4dc2ce54f0539dd5a115c76babe6c044ae1115966f6062244d";
      meta = with lib;
      {
        description = "Fixes low-contrast text when using a dark desktop theme.";
        license = licenses.mit;
        mozPermissions = [ "<all_urls>" "storage" "tabs" "webNavigation" ];
        platforms = platforms.all;
      };
    };
    "textern" = buildFirefoxXpiAddon {
      pname = "textern";
      version = "0.8";
      addonId = "textern@jlebon.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4123022/textern-0.8.xpi";
      sha256 = "e7c6dab734b44148ab10b1d3db016059d571bf7b0537c4f33c153e00327225ee";
      meta = with lib;
      {
        homepage = "https://github.com/jlebon/textern";
        description = "Edit text in your favourite external editor!";
        license = licenses.gpl3;
        mozPermissions = [
          "notifications"
          "nativeMessaging"
          "storage"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "theater-mode-for-youtube" = buildFirefoxXpiAddon {
      pname = "theater-mode-for-youtube";
      version = "0.2.3";
      addonId = "{b8326f03-322f-4112-96bd-e7996548d99f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4323643/theater_mode_for_youtube-0.2.3.xpi";
      sha256 = "7dca9966a23dc58226c179f1d8aa8fbd2e603e273016281ff1d9ec5fe69fc186";
      meta = with lib;
      {
        homepage = "https://webextension.org/listing/youtube-tools.html?theater";
        description = "Force YouTube to open in its player in the theater mode";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "*://www.youtube.com/*" ];
        platforms = platforms.all;
      };
    };
    "theme-nord-polar-night" = buildFirefoxXpiAddon {
      pname = "theme-nord-polar-night";
      version = "1.18";
      addonId = "{758478b6-29f3-4d69-ab17-c49fe568ed80}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3786274/nord_polar_night_theme-1.18.xpi";
      sha256 = "3a871b7ad5f78fe929b14d12afca722155bf47382d94da53bc9db899b78ec34c";
      meta = with lib;
      {
        homepage = "https://github.com/ChristosBouronikos/Nord-Polar-Night-Theme";
        description = "<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/ba1182cc6e56316a3cb1a60385b04ef4843dca5caf9bb4a82a5ba5b0556aeee8/https%3A//paypal.me/christosbouronikos\" rel=\"nofollow\">https://paypal.me/christosbouronikos</a>";
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "to-deepl" = buildFirefoxXpiAddon {
      pname = "to-deepl";
      version = "0.9.0";
      addonId = "{db420ff1-427a-4cda-b5e7-7d395b9f16e1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4065186/to_deepl-0.9.0.xpi";
      sha256 = "98dde9b41f4971b0795a7c884b34b578701752deafe9febcd870fc4b056afdf4";
      meta = with lib;
      {
        homepage = "https://github.com/xpmn/firefox-to-deepl/";
        description = "Right-click on a section of text and click on \"To DeepL\" to translate it to your language. Default language is selected in extension preferences.";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "contextMenus" "storage" ];
        platforms = platforms.all;
      };
    };
    "to-google-translate" = buildFirefoxXpiAddon {
      pname = "to-google-translate";
      version = "4.2.0";
      addonId = "jid1-93WyvpgvxzGATw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3798719/to_google_translate-4.2.0.xpi";
      sha256 = "1b3b22b3d50fe101e76e931ec2a0207b547f272c970db72b7ed72d4ff065f2d6";
      meta = with lib;
      {
        homepage = "https://github.com/itsecurityco/to-google-translate";
        description = "Right-click a section of text and click the Translate icon next to it to text translate or listen to it in your language.";
        license = licenses.mpl20;
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "contextMenus"
          "storage"
          "webRequest"
          "webRequestBlocking"
          "tabs"
          "*://translate.google.com/*"
          "*://translate.google.cn/*"
          "*://translate.googleusercontent.com/*"
          "*://translate.googleusercontent.cn/*"
        ];
        platforms = platforms.all;
      };
    };
    "tokyo-night-v2" = buildFirefoxXpiAddon {
      pname = "tokyo-night-v2";
      version = "1.0";
      addonId = "{afda92c3-008d-4d08-8766-3f1571995071}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3872556/tokyo_night_v2-1.0.xpi";
      sha256 = "35e99f6584d450412916c95af3dc3cedf4c794657c54bbc1dde900a24880cdf9";
      meta = with lib;
      {
        description = "A Tokyo Night theme, based on enkia's VS Code theme. There are other Tokyo Night themes in the addons store, but none of them actually had the right colors, so I decided to make my own.";
        license = licenses.cc-by-nc-sa-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "tomato-clock" = buildFirefoxXpiAddon {
      pname = "tomato-clock";
      version = "6.0.2";
      addonId = "jid1-Kt2kYYgi32zPuw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3835234/tomato_clock-6.0.2.xpi";
      sha256 = "a13ab0834740ad44ae569aa961b22ca86ce21989fffca50d5cb42061db4c78a7";
      meta = with lib;
      {
        homepage = "https://github.com/samueljun/tomato-clock";
        description = "Tomato Clock is a simple browser extension that helps with online time management.";
        license = licenses.gpl3;
        mozPermissions = [ "notifications" "storage" ];
        platforms = platforms.all;
      };
    };
    "toolkit-for-ynab" = buildFirefoxXpiAddon {
      pname = "toolkit-for-ynab";
      version = "3.15.0";
      addonId = "{4F1FB113-D7D8-40AE-A5BA-9300EAEA0F51}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4336302/toolkit_for_ynab-3.15.0.xpi";
      sha256 = "79d187a44e0ef30027f9ce149057c8bf9d308ef115965b7e4aae762ac218f511";
      meta = with lib;
      {
        homepage = "https://github.com/toolkit-for-ynab/toolkit-for-ynab";
        description = "UI customizations and tweaks for the web version of YNAB.";
        license = licenses.mit;
        mozPermissions = [
          "http://*.youneedabudget.com/*"
          "https://*.youneedabudget.com/*"
          "https://*.ynab.com/*"
          "http://*.ynab.com/*"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "torrent-control" = buildFirefoxXpiAddon {
      pname = "torrent-control";
      version = "0.2.38";
      addonId = "{e6e36c9a-8323-446c-b720-a176017e38ff}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4310629/torrent_control-0.2.38.xpi";
      sha256 = "d78b7def068eb874e69a519684d657d09d8aba94593903be096319a312f25898";
      meta = with lib;
      {
        homepage = "https://github.com/Mika-/torrent-control";
        description = "Send torrent and magnet links to your Bittorrent client's web interface. Supports BiglyBT, Cloud Torrent, Deluge, Flood, ruTorrent, Tixati, Transmission, tTorrent, µTorrent, Vuze and qBittorrent.";
        license = licenses.mit;
        mozPermissions = [
          "contextMenus"
          "cookies"
          "notifications"
          "storage"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "tournesol" = buildFirefoxXpiAddon {
      pname = "tournesol";
      version = "3.6.1";
      addonId = "{e8e831e8-8a2b-4fd8-b9f0-cd11155b476d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4329572/tournesol_extension-3.6.1.xpi";
      sha256 = "6362fd2de2ea38cc52f04c8a8294bc57a38d78b1fa70fdc7ba657b9b907cec96";
      meta = with lib;
      {
        homepage = "https://tournesol.app/";
        description = "See Tournesol recommendation on YouTube, and easily contribute to the project (https://tournesol.app).";
        license = licenses.lgpl3;
        mozPermissions = [
          "https://tournesol.app/"
          "https://api.tournesol.app/"
          "https://www.youtube.com/"
          "activeTab"
          "contextMenus"
          "storage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "https://*.youtube.com/*"
          "https://tournesol.app/*"
        ];
        platforms = platforms.all;
      };
    };
    "translate-web-pages" = buildFirefoxXpiAddon {
      pname = "translate-web-pages";
      version = "10.0.1.1";
      addonId = "{036a55b4-5e72-4d05-a06c-cba2dfcc134a}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4245500/traduzir_paginas_web-10.0.1.1.xpi";
      sha256 = "26ca52178f68e33d7da4ac3fc8ae1479ba6f98a0ec827ecb7faf097413235bb6";
      meta = with lib;
      {
        description = "Translate your page in real time using Google or Yandex.\nIt is not necessary to open new tabs.\nNow works with the NoScript Extension.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "storage"
          "activeTab"
          "contextMenus"
          "webRequest"
          "https://www.deepl.com/translator*"
        ];
        platforms = platforms.all;
      };
    };
    "transparent-standalone-image" = buildFirefoxXpiAddon {
      pname = "transparent-standalone-image";
      version = "2.2resigned1";
      addonId = "jid0-ezUl0hF1SPM9hLO5BMBkNoblB8s@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270447/transparent_standalone_image-2.2resigned1.xpi";
      sha256 = "bc7aeb16c9888c801300f818ff86737ca7e15315ab63c77acb309b42e2c0ba07";
      meta = with lib;
      {
        description = "This add-on renders standalone images on a transparent background, so you can see the image in all its glory!";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "file:///*" "*://*/*" ];
        platforms = platforms.all;
      };
    };
    "tree-style-tab" = buildFirefoxXpiAddon {
      pname = "tree-style-tab";
      version = "4.0.22";
      addonId = "treestyletab@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333810/tree_style_tab-4.0.22.xpi";
      sha256 = "7712bb35bddaf4178a2847476c9dc4938c28e2661d02895fafefb2e3eae7fe9a";
      meta = with lib;
      {
        homepage = "http://piro.sakura.ne.jp/xul/_treestyletab.html.en";
        description = "Show tabs like a tree.";
        license = {
          shortName = "tree-style-tab";
          fullName = "Tree Style Tab License, primarily MPL 2.0";
          url = "https://github.com/piroor/treestyletab/blob/trunk/COPYING.txt";
          free = true;
        };
        mozPermissions = [
          "activeTab"
          "contextualIdentities"
          "cookies"
          "menus"
          "menus.overrideContext"
          "notifications"
          "search"
          "sessions"
          "storage"
          "tabs"
          "theme"
        ];
        platforms = platforms.all;
      };
    };
    "tridactyl" = buildFirefoxXpiAddon {
      pname = "tridactyl";
      version = "1.24.1";
      addonId = "tridactyl.vim@cmcaine.co.uk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4261352/tridactyl_vim-1.24.1.xpi";
      sha256 = "ab63fe1554471c280f234409393172fc58e1bb2ca527f4329d983b028073e19c";
      meta = with lib;
      {
        homepage = "https://tridactyl.xyz";
        description = "Vim, but in your browser. Replace Firefox's control mechanism with one modelled on Vim.\n\nThis addon is very usable, but is in an early stage of development. We intend to implement the majority of Vimperator's features.";
        license = licenses.asl20;
        mozPermissions = [
          "activeTab"
          "bookmarks"
          "browsingData"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "clipboardWrite"
          "clipboardRead"
          "downloads"
          "find"
          "history"
          "search"
          "sessions"
          "storage"
          "tabHide"
          "tabs"
          "topSites"
          "management"
          "nativeMessaging"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "proxy"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "tst-active-tab-on-scroll-bar" = buildFirefoxXpiAddon {
      pname = "tst-active-tab-on-scroll-bar";
      version = "1.3.2";
      addonId = "tst-active-tab-on-scrollbar@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255623/tst_active_tab_on_scroll_bar-1.3.2.xpi";
      sha256 = "48b1e34aff6f0432167d62f34c1a59015260cdf624e3860a75a4ed502bf88b6b";
      meta = with lib;
      {
        description = "Provides a marker to indicate active tab position in Tree Style Tab sidebar.";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-bookmarks-subpanel" = buildFirefoxXpiAddon {
      pname = "tst-bookmarks-subpanel";
      version = "2.0";
      addonId = "tst-bookmarks-subpanel@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4231489/tst_bookmarks_subpanel-2.0.xpi";
      sha256 = "a1d813e6aeff23d5d5b73496c99940815b03560556c22f975d6df4b7d781865d";
      meta = with lib;
      {
        description = "Provides a bookmarks subpanel for Tree Style Tab's sidebar.";
        license = licenses.mpl20;
        mozPermissions = [ "bookmarks" "browserSettings" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-fade-old-tabs" = buildFirefoxXpiAddon {
      pname = "tst-fade-old-tabs";
      version = "1.0.1";
      addonId = "tst_fade_old_tabs@emvaized.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3947697/tst_fade_old_tabs-1.0.1.xpi";
      sha256 = "8ae93b81227316c543833358a25ccaf6ff8a84972e4866336ff37a73e6044290";
      meta = with lib;
      {
        description = "This TST addon fades away tabs that hasn't been visited for a while";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-indent-line" = buildFirefoxXpiAddon {
      pname = "tst-indent-line";
      version = "1.3.2";
      addonId = "tst-indent-line@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255629/tst_indent_line-1.3.2.xpi";
      sha256 = "51dbbef66cf7f8df57170c31be926fec1ec08a3a7150b37d86a11b715e3c5fd0";
      meta = with lib;
      {
        description = "Provides indent line for Tree Style Tab sidebar.";
        license = licenses.mpl20;
        mozPermissions = [ "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-lock-tree-collapsed" = buildFirefoxXpiAddon {
      pname = "tst-lock-tree-collapsed";
      version = "1.4.3";
      addonId = "tst-lock-tree-collapsed@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4259052/tst_lock_tree_collapsed-1.4.3.xpi";
      sha256 = "d7e25f5407ca1b9e57d3eca88fd9e7762805ed27c306377c5b8afc7f2570f796";
      meta = with lib;
      {
        homepage = "https://github.com/piroor/tst-lock-tree-collapsed";
        description = "Provides ability to lock trees in Tree Style Tab  as collapsed.";
        license = licenses.mpl20;
        mozPermissions = [ "menus" "tabs" "sessions" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-more-tree-commands" = buildFirefoxXpiAddon {
      pname = "tst-more-tree-commands";
      version = "1.5.1";
      addonId = "tst-more-tree-commands@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255633/tst_more_tree_commands-1.5.1.xpi";
      sha256 = "698bb52891454c18af3ebf4803546f18d990206d099f4f3721a1e65c91120fca";
      meta = with lib;
      {
        description = "Provides extra tree manipulation commands for Tree Style Tab.";
        license = licenses.mpl20;
        mozPermissions = [ "menus" "tabs" "storage" ];
        platforms = platforms.all;
      };
    };
    "tst-tab-search" = buildFirefoxXpiAddon {
      pname = "tst-tab-search";
      version = "0.0.7";
      addonId = "@tst-search";
      url = "https://addons.mozilla.org/firefox/downloads/file/4145356/tst_search-0.0.7.xpi";
      sha256 = "5979b6ebc694ed1e62d27fec8f750dcb7f09ca393a4ce8ca552d56b7e7241bef";
      meta = with lib;
      {
        homepage = "https://github.com/NiklasGollenstede/tst-search#readme";
        description = "Search for or filter the Tabs in TST's sidebar, and quickly find and activate them.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "notifications" "tabs" ];
        platforms = platforms.all;
      };
    };
    "tst-wheel-and-double" = buildFirefoxXpiAddon {
      pname = "tst-wheel-and-double";
      version = "1.5.9";
      addonId = "tst-wheel_and_double@dontpokebadgers.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4238561/tree_style_tab_mouse_wheel-1.5.9.xpi";
      sha256 = "0a01661043222df41264743e8f9d9daef9c6b0e27ec6660bd212c9df6f877676";
      meta = with lib;
      {
        homepage = "https://github.com/joshuacant/";
        description = "This add-on requires Tree Style Tab. It extends Tree Style Tab to allow tab changing by mouse wheel scrolling and reloading a tab when double clicking it.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "tubearchivist-companion" = buildFirefoxXpiAddon {
      pname = "tubearchivist-companion";
      version = "0.3.2";
      addonId = "{08f0f80f-2b26-4809-9267-287a5bdda2da}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4312331/tubearchivist_companion-0.3.2.xpi";
      sha256 = "fae10b563e9e71dd9961a2b2b4aacc6b266716f6c4b27e5caf4739e6bc32f3fb";
      meta = with lib;
      {
        homepage = "https://github.com/tubearchivist/browser-extension";
        description = "Interact with your selfhosted TA server.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "cookies"
          "https://*.youtube.com/*"
          "https://www.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "ublacklist" = buildFirefoxXpiAddon {
      pname = "ublacklist";
      version = "8.9.2";
      addonId = "@ublacklist";
      url = "https://addons.mozilla.org/firefox/downloads/file/4327308/ublacklist-8.9.2.xpi";
      sha256 = "00d50c0ede7c6898935a8e6a9a5bd09d481382b0568e799a51c83104537f5b86";
      meta = with lib;
      {
        homepage = "https://iorate.github.io/ublacklist/";
        description = "Blocks sites you specify from appearing in Google search results";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "alarms"
          "identity"
          "storage"
          "unlimitedStorage"
          "https://www.google.com/search?*"
          "https://www.google.ad/search?*"
          "https://www.google.ae/search?*"
          "https://www.google.com.af/search?*"
          "https://www.google.com.ag/search?*"
          "https://www.google.com.ai/search?*"
          "https://www.google.al/search?*"
          "https://www.google.am/search?*"
          "https://www.google.co.ao/search?*"
          "https://www.google.com.ar/search?*"
          "https://www.google.as/search?*"
          "https://www.google.at/search?*"
          "https://www.google.com.au/search?*"
          "https://www.google.az/search?*"
          "https://www.google.ba/search?*"
          "https://www.google.com.bd/search?*"
          "https://www.google.be/search?*"
          "https://www.google.bf/search?*"
          "https://www.google.bg/search?*"
          "https://www.google.com.bh/search?*"
          "https://www.google.bi/search?*"
          "https://www.google.bj/search?*"
          "https://www.google.com.bn/search?*"
          "https://www.google.com.bo/search?*"
          "https://www.google.com.br/search?*"
          "https://www.google.bs/search?*"
          "https://www.google.bt/search?*"
          "https://www.google.co.bw/search?*"
          "https://www.google.by/search?*"
          "https://www.google.com.bz/search?*"
          "https://www.google.ca/search?*"
          "https://www.google.cd/search?*"
          "https://www.google.cf/search?*"
          "https://www.google.cg/search?*"
          "https://www.google.ch/search?*"
          "https://www.google.ci/search?*"
          "https://www.google.co.ck/search?*"
          "https://www.google.cl/search?*"
          "https://www.google.cm/search?*"
          "https://www.google.cn/search?*"
          "https://www.google.com.co/search?*"
          "https://www.google.co.cr/search?*"
          "https://www.google.com.cu/search?*"
          "https://www.google.cv/search?*"
          "https://www.google.com.cy/search?*"
          "https://www.google.cz/search?*"
          "https://www.google.de/search?*"
          "https://www.google.dj/search?*"
          "https://www.google.dk/search?*"
          "https://www.google.dm/search?*"
          "https://www.google.com.do/search?*"
          "https://www.google.dz/search?*"
          "https://www.google.com.ec/search?*"
          "https://www.google.ee/search?*"
          "https://www.google.com.eg/search?*"
          "https://www.google.es/search?*"
          "https://www.google.com.et/search?*"
          "https://www.google.fi/search?*"
          "https://www.google.com.fj/search?*"
          "https://www.google.fm/search?*"
          "https://www.google.fr/search?*"
          "https://www.google.ga/search?*"
          "https://www.google.ge/search?*"
          "https://www.google.gg/search?*"
          "https://www.google.com.gh/search?*"
          "https://www.google.com.gi/search?*"
          "https://www.google.gl/search?*"
          "https://www.google.gm/search?*"
          "https://www.google.gp/search?*"
          "https://www.google.gr/search?*"
          "https://www.google.com.gt/search?*"
          "https://www.google.gy/search?*"
          "https://www.google.com.hk/search?*"
          "https://www.google.hn/search?*"
          "https://www.google.hr/search?*"
          "https://www.google.ht/search?*"
          "https://www.google.hu/search?*"
          "https://www.google.co.id/search?*"
          "https://www.google.ie/search?*"
          "https://www.google.co.il/search?*"
          "https://www.google.im/search?*"
          "https://www.google.co.in/search?*"
          "https://www.google.iq/search?*"
          "https://www.google.is/search?*"
          "https://www.google.it/search?*"
          "https://www.google.je/search?*"
          "https://www.google.com.jm/search?*"
          "https://www.google.jo/search?*"
          "https://www.google.co.jp/search?*"
          "https://www.google.co.ke/search?*"
          "https://www.google.com.kh/search?*"
          "https://www.google.ki/search?*"
          "https://www.google.kg/search?*"
          "https://www.google.co.kr/search?*"
          "https://www.google.com.kw/search?*"
          "https://www.google.kz/search?*"
          "https://www.google.la/search?*"
          "https://www.google.com.lb/search?*"
          "https://www.google.li/search?*"
          "https://www.google.lk/search?*"
          "https://www.google.co.ls/search?*"
          "https://www.google.lt/search?*"
          "https://www.google.lu/search?*"
          "https://www.google.lv/search?*"
          "https://www.google.com.ly/search?*"
          "https://www.google.co.ma/search?*"
          "https://www.google.md/search?*"
          "https://www.google.me/search?*"
          "https://www.google.mg/search?*"
          "https://www.google.mk/search?*"
          "https://www.google.ml/search?*"
          "https://www.google.com.mm/search?*"
          "https://www.google.mn/search?*"
          "https://www.google.ms/search?*"
          "https://www.google.com.mt/search?*"
          "https://www.google.mu/search?*"
          "https://www.google.mv/search?*"
          "https://www.google.mw/search?*"
          "https://www.google.com.mx/search?*"
          "https://www.google.com.my/search?*"
          "https://www.google.co.mz/search?*"
          "https://www.google.com.na/search?*"
          "https://www.google.com.nf/search?*"
          "https://www.google.com.ng/search?*"
          "https://www.google.com.ni/search?*"
          "https://www.google.ne/search?*"
          "https://www.google.nl/search?*"
          "https://www.google.no/search?*"
          "https://www.google.com.np/search?*"
          "https://www.google.nr/search?*"
          "https://www.google.nu/search?*"
          "https://www.google.co.nz/search?*"
          "https://www.google.com.om/search?*"
          "https://www.google.com.pa/search?*"
          "https://www.google.com.pe/search?*"
          "https://www.google.com.pg/search?*"
          "https://www.google.com.ph/search?*"
          "https://www.google.com.pk/search?*"
          "https://www.google.pl/search?*"
          "https://www.google.pn/search?*"
          "https://www.google.com.pr/search?*"
          "https://www.google.ps/search?*"
          "https://www.google.pt/search?*"
          "https://www.google.com.py/search?*"
          "https://www.google.com.qa/search?*"
          "https://www.google.ro/search?*"
          "https://www.google.ru/search?*"
          "https://www.google.rw/search?*"
          "https://www.google.com.sa/search?*"
          "https://www.google.com.sb/search?*"
          "https://www.google.sc/search?*"
          "https://www.google.se/search?*"
          "https://www.google.com.sg/search?*"
          "https://www.google.sh/search?*"
          "https://www.google.si/search?*"
          "https://www.google.sk/search?*"
          "https://www.google.com.sl/search?*"
          "https://www.google.sn/search?*"
          "https://www.google.so/search?*"
          "https://www.google.sm/search?*"
          "https://www.google.sr/search?*"
          "https://www.google.st/search?*"
          "https://www.google.com.sv/search?*"
          "https://www.google.td/search?*"
          "https://www.google.tg/search?*"
          "https://www.google.co.th/search?*"
          "https://www.google.com.tj/search?*"
          "https://www.google.tk/search?*"
          "https://www.google.tl/search?*"
          "https://www.google.tm/search?*"
          "https://www.google.tn/search?*"
          "https://www.google.to/search?*"
          "https://www.google.com.tr/search?*"
          "https://www.google.tt/search?*"
          "https://www.google.com.tw/search?*"
          "https://www.google.co.tz/search?*"
          "https://www.google.com.ua/search?*"
          "https://www.google.co.ug/search?*"
          "https://www.google.co.uk/search?*"
          "https://www.google.com.uy/search?*"
          "https://www.google.co.uz/search?*"
          "https://www.google.com.vc/search?*"
          "https://www.google.co.ve/search?*"
          "https://www.google.vg/search?*"
          "https://www.google.co.vi/search?*"
          "https://www.google.com.vn/search?*"
          "https://www.google.vu/search?*"
          "https://www.google.ws/search?*"
          "https://www.google.rs/search?*"
          "https://www.google.co.za/search?*"
          "https://www.google.co.zm/search?*"
          "https://www.google.co.zw/search?*"
          "https://www.google.cat/search?*"
        ];
        platforms = platforms.all;
      };
    };
    "ublock-origin" = buildFirefoxXpiAddon {
      pname = "ublock-origin";
      version = "1.59.0";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328681/ublock_origin-1.59.0.xpi";
      sha256 = "1db9c676a07d141f8d36dbbc24f9e3d64a6cc2340dbfc6c848bc4395f96cfb14";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "dns"
          "menus"
          "privacy"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "https://easylist.to/*"
          "https://*.fanboy.co.nz/*"
          "https://filterlists.com/*"
          "https://forums.lanik.us/*"
          "https://github.com/*"
          "https://*.github.io/*"
          "https://github.com/uBlockOrigin/*"
          "https://ublockorigin.github.io/*"
          "https://*.reddit.com/r/uBlockOrigin/*"
        ];
        platforms = platforms.all;
      };
    };
    "ublock-origin-lite" = buildFirefoxXpiAddon {
      pname = "ublock-origin-lite";
      version = "2024.8.21.996";
      addonId = "uBOLite@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340611/ublock_origin_lite-2024.8.21.996.xpi";
      sha256 = "f27287d787e693f943cf85e056b02cc4f04753bc7757b2d48db29b290af8e212";
      meta = with lib;
      {
        homepage = "https://github.com/uBlockOrigin/uBOL-home";
        description = "A permission-less content blocker. Blocks ads, trackers, miners, and more immediately upon installation.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "declarativeNetRequest"
          "scripting"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "ubo-scope" = buildFirefoxXpiAddon {
      pname = "ubo-scope";
      version = "0.1.13resigned1";
      addonId = "uBO-Scope@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272830/ubo_scope-0.1.13resigned1.xpi";
      sha256 = "ba1e1872b1f1a7b75c61817a46d82f026db0e6e14f719c58a1e657d1c4487af0";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBO-Scope";
        description = "A tool to measure your 3rd-party exposure score for web sites you visit.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "storage"
          "unlimitedStorage"
          "webRequest"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "ukrainian-dictionary" = buildFirefoxXpiAddon {
      pname = "ukrainian-dictionary";
      version = "6.4.4";
      addonId = "uk-ua@dictionaries.addons.mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4255824/ukrainian_dictionary-6.4.4.xpi";
      sha256 = "47f2714c36dc2ce40f6ae6d13f44bf01909dbc01f7b43b8d922a24d22439e8ec";
      meta = with lib;
      {
        homepage = "https://github.com/brown-uk/dict_uk";
        description = "Ukrainian (uk-UA) spellchecking dictionary";
        license = licenses.mpl11;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "umatrix" = buildFirefoxXpiAddon {
      pname = "umatrix";
      version = "1.4.4";
      addonId = "uMatrix@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/3812704/umatrix-1.4.4.xpi";
      sha256 = "1de172b1d82de28c334834f7b0eaece0b503f59e62cfc0ccf23222b8f2cb88e5";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uMatrix";
        description = "Point &amp; click to forbid/allow any class of requests made by your browser. Use it to block scripts, iframes, ads, facebook, etc.";
        license = licenses.gpl3;
        mozPermissions = [
          "browsingData"
          "cookies"
          "privacy"
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "undoclosetabbutton" = buildFirefoxXpiAddon {
      pname = "undoclosetabbutton";
      version = "8.0.0";
      addonId = "{4853d046-c5a3-436b-bc36-220fd935ee1d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4212173/undoclosetabbutton-8.0.0.xpi";
      sha256 = "c83a058c417f98d75e62ab310e2995971bf79c99cd83cf1dcbd8a44797aa60c4";
      meta = with lib;
      {
        homepage = "https://github.com/M-Reimer/undoclosetab";
        description = "Allows you to restore the tab you just closed with a single click—plus it can offer a list of recently closed tabs within a convenient context menu.";
        license = licenses.gpl3;
        mozPermissions = [ "menus" "tabs" "sessions" "storage" "theme" ];
        platforms = platforms.all;
      };
    };
    "unpaywall" = buildFirefoxXpiAddon {
      pname = "unpaywall";
      version = "3.98";
      addonId = "{f209234a-76f0-4735-9920-eb62507a54cd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3816853/unpaywall-3.98.xpi";
      sha256 = "6893bea86d3c4ed7f1100bf0e173591b526a062f4ddd7be13c30a54573c797fb";
      meta = with lib;
      {
        homepage = "https://unpaywall.org/products/extension";
        description = "Get free text of research papers as you browse, using Unpaywall's index of ten million legal, open-access articles.";
        license = licenses.mit;
        mozPermissions = [ "*://*.oadoi.org/*" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "untrap-for-youtube" = buildFirefoxXpiAddon {
      pname = "untrap-for-youtube";
      version = "7.5";
      addonId = "{2662ff67-b302-4363-95f3-b050218bd72c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4340926/untrap_for_youtube-7.5.xpi";
      sha256 = "0e08c295a5faf17ae73d6fadc7857a77571b7b84d0ec2cc99d12c981ded86eab";
      meta = with lib;
      {
        homepage = "http://untrap.app";
        description = "Hide YouTube recommendations, shorts, comments, suggestions, related videos, trending and other distractions.";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "storage"
          "activeTab"
          "*://*.youtube.com/*"
          "*://www.youtube.com/*"
          "*://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "unwanted-twitch" = buildFirefoxXpiAddon {
      pname = "unwanted-twitch";
      version = "24.3.30";
      addonId = "unwanted@twitch.tv";
      url = "https://addons.mozilla.org/firefox/downloads/file/4257695/unwanted_twitch-24.3.30.xpi";
      sha256 = "3d55b58bdbf9ff16da15e8c175bb38d4bab2a791afcbef53f186415dcb4f162a";
      meta = with lib;
      {
        homepage = "https://github.com/kwaschny/unwanted-twitch";
        description = "Hide unwanted streams, games, categories, channels and tags on: <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/467fe07ac13c13856de8dd6315fd58ddc3356ad980bae2d20314f29ad039768e/http%3A//twitch.tv\" rel=\"nofollow\">twitch.tv</a>";
        license = licenses.mit;
        mozPermissions = [ "storage" "https://www.twitch.tv/*" ];
        platforms = platforms.all;
      };
    };
    "user-agent-string-switcher" = buildFirefoxXpiAddon {
      pname = "user-agent-string-switcher";
      version = "0.5.0";
      addonId = "{a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4098688/user_agent_string_switcher-0.5.0.xpi";
      sha256 = "9dc8da3c8c46d4f04d12fd789c63501fa6a2f502f859b286939a090db63eae33";
      meta = with lib;
      {
        homepage = "http://add0n.com/useragent-switcher.html";
        description = "Spoof websites trying to gather information about your web navigation—like your browser type and operating system—to deliver distinct content you may not want.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "<all_urls>"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "userchrome-toggle" = buildFirefoxXpiAddon {
      pname = "userchrome-toggle";
      version = "1.2";
      addonId = "userchrome-toggle@joolee.nl";
      url = "https://addons.mozilla.org/firefox/downloads/file/3912447/userchrome_toggle-1.2.xpi";
      sha256 = "b8b87be8c67e0538536e9482a80a8536b081aed7a7c8bcb4387fdc4f97705c8d";
      meta = with lib;
      {
        description = "This extension allows you to toggle userchrome.css styles on-the-fly with buttons and hotkeys.";
        license = licenses.mit;
        mozPermissions = [ "notifications" "storage" ];
        platforms = platforms.all;
      };
    };
    "userchrome-toggle-extended" = buildFirefoxXpiAddon {
      pname = "userchrome-toggle-extended";
      version = "2.0.1";
      addonId = "userchrome-toggle-extended@n2ezr.ru";
      url = "https://addons.mozilla.org/firefox/downloads/file/4341014/userchrome_toggle_extended-2.0.1.xpi";
      sha256 = "3f5be2684284c0b79aaad0f70872a87f21a9a1329a5eaf8e60090e6f0e6a741d";
      meta = with lib;
      {
        description = "This extension allows you to toggle userchrome.css styles on-the-fly with buttons and hotkeys. You'll be able to switch up to six styles";
        license = licenses.mpl20;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "video-downloadhelper" = buildFirefoxXpiAddon {
      pname = "video-downloadhelper";
      version = "9.1.0.42";
      addonId = "{b9db16a4-6edc-47ec-a1f4-b86292ed211d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4330505/video_downloadhelper-9.1.0.42.xpi";
      sha256 = "700a2f04464be078733f28fd26b1fc7c1e2e21fb1606745a28ac9b471db1d570";
      meta = with lib;
      {
        homepage = "http://www.downloadhelper.net/";
        description = "Download videos from the web. Easy, smart, no tracking.";
        license = {
          shortName = "vdh";
          fullName = "Custom License for Video DownloadHelper";
          url = "https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/license/";
          free = false;
        };
        mozPermissions = [
          "tabs"
          "webRequest"
          "downloads"
          "webNavigation"
          "notifications"
          "scripting"
          "storage"
          "<all_urls>"
          "webRequestBlocking"
          "menus"
          "contextMenus"
          "nativeMessaging"
          "*://*.downloadhelper.net/*"
          "*://*.downloadhelper.net/changelog/mozilla/*"
          "*://*.downloadhelper.net/debugger"
        ];
        platforms = platforms.all;
      };
    };
    "videospeed" = buildFirefoxXpiAddon {
      pname = "videospeed";
      version = "0.6.3.3";
      addonId = "{7be2ba16-0f1e-4d93-9ebc-5164397477a9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3756025/videospeed-0.6.3.3.xpi";
      sha256 = "dea225f3520dd92b5ab3ef30515f37fbd127aa191c7eb3fa2547d2deae52102a";
      meta = with lib;
      {
        homepage = "https://github.com/codebicycle/videospeed";
        description = "Speed up, slow down, advance and rewind any HTML5 video with quick shortcuts.";
        license = licenses.mit;
        mozPermissions = [ "storage" "http://*/*" "https://*/*" "file:///*" ];
        platforms = platforms.all;
      };
    };
    "view-image" = buildFirefoxXpiAddon {
      pname = "view-image";
      version = "5.2.0";
      addonId = "{287dcf75-bec6-4eec-b4f6-71948a2eea29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4309509/view_image-5.2.0.xpi";
      sha256 = "32c74f49a4f54f90e768946d44ae569948fd7b9b155a91b6c1a0a3f1ab1cc7eb";
      meta = with lib;
      {
        homepage = "https://github.com/bijij/ViewImage";
        description = "Re-implements the google image, \"View Image\" button.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://*.google.com/*"
          "*://*.google.ad/*"
          "*://*.google.ae/*"
          "*://*.google.com.af/*"
          "*://*.google.com.ag/*"
          "*://*.google.al/*"
          "*://*.google.am/*"
          "*://*.google.co.ao/*"
          "*://*.google.com.ar/*"
          "*://*.google.as/*"
          "*://*.google.at/*"
          "*://*.google.com.au/*"
          "*://*.google.az/*"
          "*://*.google.ba/*"
          "*://*.google.com.bd/*"
          "*://*.google.be/*"
          "*://*.google.bf/*"
          "*://*.google.bg/*"
          "*://*.google.com.bh/*"
          "*://*.google.bi/*"
          "*://*.google.bj/*"
          "*://*.google.com.bn/*"
          "*://*.google.com.bo/*"
          "*://*.google.com.br/*"
          "*://*.google.bs/*"
          "*://*.google.bt/*"
          "*://*.google.co.bw/*"
          "*://*.google.by/*"
          "*://*.google.com.bz/*"
          "*://*.google.ca/*"
          "*://*.google.cd/*"
          "*://*.google.cf/*"
          "*://*.google.cg/*"
          "*://*.google.ch/*"
          "*://*.google.ci/*"
          "*://*.google.co.ck/*"
          "*://*.google.cl/*"
          "*://*.google.cm/*"
          "*://*.google.cn/*"
          "*://*.google.com.co/*"
          "*://*.google.co.cr/*"
          "*://*.google.com.cu/*"
          "*://*.google.cv/*"
          "*://*.google.com.cy/*"
          "*://*.google.cz/*"
          "*://*.google.de/*"
          "*://*.google.dj/*"
          "*://*.google.dk/*"
          "*://*.google.dm/*"
          "*://*.google.com.do/*"
          "*://*.google.dz/*"
          "*://*.google.com.ec/*"
          "*://*.google.ee/*"
          "*://*.google.com.eg/*"
          "*://*.google.es/*"
          "*://*.google.com.et/*"
          "*://*.google.fi/*"
          "*://*.google.com.fj/*"
          "*://*.google.fm/*"
          "*://*.google.fr/*"
          "*://*.google.ga/*"
          "*://*.google.ge/*"
          "*://*.google.gg/*"
          "*://*.google.com.gh/*"
          "*://*.google.com.gi/*"
          "*://*.google.gl/*"
          "*://*.google.gm/*"
          "*://*.google.gr/*"
          "*://*.google.com.gt/*"
          "*://*.google.gy/*"
          "*://*.google.com.hk/*"
          "*://*.google.hn/*"
          "*://*.google.hr/*"
          "*://*.google.ht/*"
          "*://*.google.hu/*"
          "*://*.google.co.id/*"
          "*://*.google.ie/*"
          "*://*.google.co.il/*"
          "*://*.google.im/*"
          "*://*.google.co.in/*"
          "*://*.google.iq/*"
          "*://*.google.is/*"
          "*://*.google.it/*"
          "*://*.google.je/*"
          "*://*.google.com.jm/*"
          "*://*.google.jo/*"
          "*://*.google.co.jp/*"
          "*://*.google.co.ke/*"
          "*://*.google.com.kh/*"
          "*://*.google.ki/*"
          "*://*.google.kg/*"
          "*://*.google.co.kr/*"
          "*://*.google.com.kw/*"
          "*://*.google.kz/*"
          "*://*.google.la/*"
          "*://*.google.com.lb/*"
          "*://*.google.li/*"
          "*://*.google.lk/*"
          "*://*.google.co.ls/*"
          "*://*.google.lt/*"
          "*://*.google.lu/*"
          "*://*.google.lv/*"
          "*://*.google.com.ly/*"
          "*://*.google.co.ma/*"
          "*://*.google.md/*"
          "*://*.google.me/*"
          "*://*.google.mg/*"
          "*://*.google.mk/*"
          "*://*.google.ml/*"
          "*://*.google.com.mm/*"
          "*://*.google.mn/*"
          "*://*.google.com.mt/*"
          "*://*.google.mu/*"
          "*://*.google.mv/*"
          "*://*.google.mw/*"
          "*://*.google.com.mx/*"
          "*://*.google.com.my/*"
          "*://*.google.co.mz/*"
          "*://*.google.com.na/*"
          "*://*.google.com.ng/*"
          "*://*.google.com.ni/*"
          "*://*.google.ne/*"
          "*://*.google.nl/*"
          "*://*.google.no/*"
          "*://*.google.com.np/*"
          "*://*.google.nr/*"
          "*://*.google.nu/*"
          "*://*.google.co.nz/*"
          "*://*.google.com.om/*"
          "*://*.google.com.pa/*"
          "*://*.google.com.pe/*"
          "*://*.google.com.pg/*"
          "*://*.google.com.ph/*"
          "*://*.google.com.pk/*"
          "*://*.google.pl/*"
          "*://*.google.pn/*"
          "*://*.google.com.pr/*"
          "*://*.google.ps/*"
          "*://*.google.pt/*"
          "*://*.google.com.py/*"
          "*://*.google.com.qa/*"
          "*://*.google.ro/*"
          "*://*.google.ru/*"
          "*://*.google.rw/*"
          "*://*.google.com.sa/*"
          "*://*.google.com.sb/*"
          "*://*.google.sc/*"
          "*://*.google.se/*"
          "*://*.google.com.sg/*"
          "*://*.google.sh/*"
          "*://*.google.si/*"
          "*://*.google.sk/*"
          "*://*.google.com.sl/*"
          "*://*.google.sn/*"
          "*://*.google.so/*"
          "*://*.google.sm/*"
          "*://*.google.sr/*"
          "*://*.google.st/*"
          "*://*.google.com.sv/*"
          "*://*.google.td/*"
          "*://*.google.tg/*"
          "*://*.google.co.th/*"
          "*://*.google.com.tj/*"
          "*://*.google.tl/*"
          "*://*.google.tm/*"
          "*://*.google.tn/*"
          "*://*.google.to/*"
          "*://*.google.com.tr/*"
          "*://*.google.tt/*"
          "*://*.google.com.tw/*"
          "*://*.google.co.tz/*"
          "*://*.google.com.ua/*"
          "*://*.google.co.ug/*"
          "*://*.google.co.uk/*"
          "*://*.google.com.uy/*"
          "*://*.google.co.uz/*"
          "*://*.google.com.vc/*"
          "*://*.google.co.ve/*"
          "*://*.google.co.vi/*"
          "*://*.google.com.vn/*"
          "*://*.google.vu/*"
          "*://*.google.ws/*"
          "*://*.google.rs/*"
          "*://*.google.co.za/*"
          "*://*.google.co.zm/*"
          "*://*.google.co.zw/*"
          "*://*.google.cat/*"
        ];
        platforms = platforms.all;
      };
    };
    "vim-vixen" = buildFirefoxXpiAddon {
      pname = "vim-vixen";
      version = "1.2.3";
      addonId = "vim-vixen@i-beam.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3845233/vim_vixen-1.2.3.xpi";
      sha256 = "8f86c77ac8e65dfd3f1a32690b56ce9231ac7686d5a86bf85e3d5cc5a3a9e9b5";
      meta = with lib;
      {
        homepage = "https://github.com/ueokande/vim-vixen";
        description = "Accelerates your web browsing with Vim power!!";
        license = licenses.mit;
        mozPermissions = [
          "history"
          "sessions"
          "storage"
          "tabs"
          "clipboardRead"
          "notifications"
          "bookmarks"
          "browserSettings"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "vimium" = buildFirefoxXpiAddon {
      pname = "vimium";
      version = "2.1.2";
      addonId = "{d7742d87-e61d-4b78-b8a1-b469842139fa}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4259790/vimium_ff-2.1.2.xpi";
      sha256 = "3b9d43ee277ff374e3b1153f97dc20cb06e654116a833674c79b43b8887820e1";
      meta = with lib;
      {
        homepage = "https://github.com/philc/vimium";
        description = "The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "bookmarks"
          "history"
          "storage"
          "sessions"
          "notifications"
          "scripting"
          "webNavigation"
          "clipboardRead"
          "clipboardWrite"
          "<all_urls>"
          "file:///"
          "file:///*/"
        ];
        platforms = platforms.all;
      };
    };
    "vimium-c" = buildFirefoxXpiAddon {
      pname = "vimium-c";
      version = "1.99.997";
      addonId = "vimium-c@gdh1995.cn";
      url = "https://addons.mozilla.org/firefox/downloads/file/4210117/vimium_c-1.99.997.xpi";
      sha256 = "20e9217ba3d9a7bd0ec3faa88ed7f872acc3f039d1bdeb997398341631617184";
      meta = with lib;
      {
        homepage = "https://github.com/gdh1995/vimium-c";
        description = "A keyboard shortcut tool for keyboard-based page navigation and browser tab operations with an advanced omnibar and global shortcuts";
        license = licenses.mit;
        mozPermissions = [
          "bookmarks"
          "clipboardRead"
          "clipboardWrite"
          "history"
          "notifications"
          "sessions"
          "storage"
          "tabs"
          "webNavigation"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "violentmonkey" = buildFirefoxXpiAddon {
      pname = "violentmonkey";
      version = "2.20.0";
      addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4315769/violentmonkey-2.20.0.xpi";
      sha256 = "94fe88507ea47e8cc5ca80b76a6aaec44a486dbfd515a03f82f228dc24d49910";
      meta = with lib;
      {
        homepage = "https://violentmonkey.github.io/";
        description = "Userscript support for browsers, open source.";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "notifications"
          "storage"
          "unlimitedStorage"
          "clipboardWrite"
          "contextMenus"
          "cookies"
        ];
        platforms = platforms.all;
      };
    };
    "vue-js-devtools" = buildFirefoxXpiAddon {
      pname = "vue-js-devtools";
      version = "6.6.3";
      addonId = "{5caff8cc-3d2e-4110-a88a-003cc85b3858}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4297952/vue_js_devtools-6.6.3.xpi";
      sha256 = "74f9d39a1dff61ce952cf34e747f1bca466c163b04727768010da3f8307fa6b7";
      meta = with lib;
      {
        homepage = "https://devtools.vuejs.org";
        description = "DevTools extension for debugging Vue.js applications.";
        license = licenses.mit;
        mozPermissions = [ "<all_urls>" "storage" "devtools" ];
        platforms = platforms.all;
      };
    };
    "w2g" = buildFirefoxXpiAddon {
      pname = "w2g";
      version = "10.3";
      addonId = "{6ea0a676-b3ef-48aa-b23d-24c8876945fb}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337397/w2g-10.3.xpi";
      sha256 = "cc0271c54fbdffdb401e85dd2634c0a7084c1796a03b28067d62ba6a048904e9";
      meta = with lib;
      {
        homepage = "https://w2g.tv";
        description = "With Watch2Gether you can watch videos together with your friends. Enhance your Watch2Gether experience with our official browser extension.";
        license = {
          shortName = "w2g.tv";
          fullName = "Watch2Gether Terms of Use";
          url = "https://community.w2g.tv/t/terms-of-use-english/597/1";
          free = false;
        };
        mozPermissions = [
          "activeTab"
          "webNavigation"
          "scripting"
          "storage"
          "https://stage.watch2gether.com/rooms/*"
          "https://w2g.tv/*"
          "https://rooms.w2g.tv/*"
          "https://stage-rooms.w2g.tv/*"
          "https://stage.w2g.tv/*"
          "https://staging.w2g.tv/*"
        ];
        platforms = platforms.all;
      };
    };
    "wallabagger" = buildFirefoxXpiAddon {
      pname = "wallabagger";
      version = "1.17.0";
      addonId = "{7a7b1d36-d7a4-481b-92c6-9f5427cb9eb1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4253375/wallabagger-1.17.0.xpi";
      sha256 = "c029d76eb2b30bd55d570bffa0e0dea9913ba6965ea278b94220762755ebb3b5";
      meta = with lib;
      {
        homepage = "https://github.com/wallabag/wallabagger";
        description = "This wallabag v2 extension has the ability to edit title and tags and set starred, archived, or delete states.\nYou can add a page from the icon or through the right click menu on a link or on a blank page spot.";
        license = licenses.mit;
        mozPermissions = [ "tabs" "storage" "contextMenus" "activeTab" ];
        platforms = platforms.all;
      };
    };
    "wappalyzer" = buildFirefoxXpiAddon {
      pname = "wappalyzer";
      version = "6.10.71";
      addonId = "wappalyzer@crunchlabz.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4337540/wappalyzer-6.10.71.xpi";
      sha256 = "4804029578f01f9d08cf95a13e4c62923a5a524afb94d5c5ecf9ff9e589f6185";
      meta = with lib;
      {
        homepage = "https://www.wappalyzer.com";
        description = "Identify technologies on websites";
        license = {
          shortName = "allrightsreserved";
          fullName = "All Rights Reserved";
          url = "https://en.wikipedia.org/w/index.php?title=All_rights_reserved&oldid=1101263186";
          free = false;
        };
        mozPermissions = [
          "cookies"
          "storage"
          "tabs"
          "webRequest"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "wayback-machine" = buildFirefoxXpiAddon {
      pname = "wayback-machine";
      version = "3.2";
      addonId = "wayback_machine@mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4047136/wayback_machine_new-3.2.xpi";
      sha256 = "75da413fee7c28e22ed61380f959888ec80c14e2a38f7b6f9d622f8a4ea853e4";
      meta = with lib;
      {
        homepage = "https://archive.org";
        description = "Welcome to the Official Internet Archive Wayback Machine Browser Extension! Go back in time to see how a website has changed through the history of the Web. Save websites, view missing 404 Not Found pages, or read archived books &amp; papers.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "cookies"
          "contextMenus"
          "notifications"
          "storage"
          "webRequest"
          "webRequestBlocking"
          "https://archive.org/*"
          "https://*.archive.org/*"
          "https://hypothes.is/*"
          "<all_urls>"
          "http://*.wikipedia.org/*"
          "https://*.wikipedia.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "web-archives" = buildFirefoxXpiAddon {
      pname = "web-archives";
      version = "6.1.1";
      addonId = "{d07ccf11-c0cd-4938-a265-2a4d6ad01189}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4307780/view_page_archive-6.1.1.xpi";
      sha256 = "ce2274e4378bff016b5fe1fbd694e27e97eb3156e8517676a694dd57ede1e614";
      meta = with lib;
      {
        homepage = "https://github.com/dessant/web-archives#readme";
        description = "View archived and cached versions of web pages on 10+ search engines, such as the Wayback Machine, Archive․is, Google, Bing and Yandex.";
        license = licenses.gpl3Only;
        mozPermissions = [
          "alarms"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "tabs"
          "activeTab"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file:///*"
        ];
        platforms = platforms.all;
      };
    };
    "web-developer" = buildFirefoxXpiAddon {
      pname = "web-developer";
      version = "3.0.1";
      addonId = "{c45c406e-ab73-11d8-be73-000a95be3b12}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4306323/web_developer-3.0.1.xpi";
      sha256 = "4d2ce2773186faa385bd95cfff10e244e37a288800497b750bab665d7be21a3d";
      meta = with lib;
      {
        homepage = "http://chrispederick.com/work/web-developer/firefox/";
        description = "The Web Developer extension adds various web developer tools to the browser.";
        license = licenses.lgpl3;
        mozPermissions = [
          "browsingData"
          "cookies"
          "history"
          "scripting"
          "storage"
          "tabs"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "web-eid" = buildFirefoxXpiAddon {
      pname = "web-eid";
      version = "2.2.1";
      addonId = "{e68418bc-f2b0-4459-a9ea-3e72b6751b07}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4079746/web_eid_webextension-2.2.1.xpi";
      sha256 = "392666581a3e71130307eb94f9010b4ca843829f592db9a093ad68fc00ca59ba";
      meta = with lib;
      {
        description = "Use your electronic identification card for secure authentication and digital signing.";
        license = licenses.mit;
        mozPermissions = [ "*://*/*" "nativeMessaging" ];
        platforms = platforms.all;
      };
    };
    "web-scrobbler" = buildFirefoxXpiAddon {
      pname = "web-scrobbler";
      version = "3.9.1";
      addonId = "{799c0914-748b-41df-a25c-22d008f9e83f}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4329106/web_scrobbler-3.9.1.xpi";
      sha256 = "e41101cd12ae88a6f6d05ccf25362313b3befd107a15b9535af13bef127f319f";
      meta = with lib;
      {
        homepage = "https://web-scrobbler.com";
        description = "Scrobble music all around the web!";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "contextMenus"
          "notifications"
          "scripting"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "web-search-navigator" = buildFirefoxXpiAddon {
      pname = "web-search-navigator";
      version = "0.5.2";
      addonId = "{ffadac89-63bb-4b04-be90-8cb2aa323171}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4117463/web_search_navigator-0.5.2.xpi";
      sha256 = "838c5e6e1520232716275c1a284fbeaeb3d5ef2ae16a67ee55fdbe208f4e439b";
      meta = with lib;
      {
        homepage = "https://github.com/infokiller/web-search-navigator";
        description = "Boost your searching productivity with Web Search Navigator! Adds keyboard shortcuts to navigate within Google Search results.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://www.google.com/search*"
          "*://www.google.ad/search*"
          "*://www.google.ae/search*"
          "*://www.google.com.af/search*"
          "*://www.google.com.ag/search*"
          "*://www.google.com.ai/search*"
          "*://www.google.al/search*"
          "*://www.google.am/search*"
          "*://www.google.co.ao/search*"
          "*://www.google.com.ar/search*"
          "*://www.google.as/search*"
          "*://www.google.at/search*"
          "*://www.google.com.au/search*"
          "*://www.google.az/search*"
          "*://www.google.ba/search*"
          "*://www.google.com.bd/search*"
          "*://www.google.be/search*"
          "*://www.google.bf/search*"
          "*://www.google.bg/search*"
          "*://www.google.com.bh/search*"
          "*://www.google.bi/search*"
          "*://www.google.bj/search*"
          "*://www.google.com.bn/search*"
          "*://www.google.com.bo/search*"
          "*://www.google.com.br/search*"
          "*://www.google.bs/search*"
          "*://www.google.bt/search*"
          "*://www.google.co.bw/search*"
          "*://www.google.by/search*"
          "*://www.google.com.bz/search*"
          "*://www.google.ca/search*"
          "*://www.google.cd/search*"
          "*://www.google.cf/search*"
          "*://www.google.cg/search*"
          "*://www.google.ch/search*"
          "*://www.google.ci/search*"
          "*://www.google.co.ck/search*"
          "*://www.google.cl/search*"
          "*://www.google.cm/search*"
          "*://www.google.cn/search*"
          "*://www.google.com.co/search*"
          "*://www.google.co.cr/search*"
          "*://www.google.com.cu/search*"
          "*://www.google.cv/search*"
          "*://www.google.com.cy/search*"
          "*://www.google.cz/search*"
          "*://www.google.de/search*"
          "*://www.google.dj/search*"
          "*://www.google.dk/search*"
          "*://www.google.dm/search*"
          "*://www.google.com.do/search*"
          "*://www.google.dz/search*"
          "*://www.google.com.ec/search*"
          "*://www.google.ee/search*"
          "*://www.google.com.eg/search*"
          "*://www.google.es/search*"
          "*://www.google.com.et/search*"
          "*://www.google.fi/search*"
          "*://www.google.com.fj/search*"
          "*://www.google.fm/search*"
          "*://www.google.fr/search*"
          "*://www.google.ga/search*"
          "*://www.google.ge/search*"
          "*://www.google.gg/search*"
          "*://www.google.com.gh/search*"
          "*://www.google.com.gi/search*"
          "*://www.google.gl/search*"
          "*://www.google.gm/search*"
          "*://www.google.gp/search*"
          "*://www.google.gr/search*"
          "*://www.google.com.gt/search*"
          "*://www.google.gy/search*"
          "*://www.google.com.hk/search*"
          "*://www.google.hn/search*"
          "*://www.google.hr/search*"
          "*://www.google.ht/search*"
          "*://www.google.hu/search*"
          "*://www.google.co.id/search*"
          "*://www.google.ie/search*"
          "*://www.google.co.il/search*"
          "*://www.google.im/search*"
          "*://www.google.co.in/search*"
          "*://www.google.iq/search*"
          "*://www.google.is/search*"
          "*://www.google.it/search*"
          "*://www.google.je/search*"
          "*://www.google.com.jm/search*"
          "*://www.google.jo/search*"
          "*://www.google.co.jp/search*"
          "*://www.google.co.ke/search*"
          "*://www.google.com.kh/search*"
          "*://www.google.ki/search*"
          "*://www.google.kg/search*"
          "*://www.google.co.kr/search*"
          "*://www.google.com.kw/search*"
          "*://www.google.kz/search*"
          "*://www.google.la/search*"
          "*://www.google.com.lb/search*"
          "*://www.google.li/search*"
          "*://www.google.lk/search*"
          "*://www.google.co.ls/search*"
          "*://www.google.lt/search*"
          "*://www.google.lu/search*"
          "*://www.google.lv/search*"
          "*://www.google.com.ly/search*"
          "*://www.google.co.ma/search*"
          "*://www.google.md/search*"
          "*://www.google.me/search*"
          "*://www.google.mg/search*"
          "*://www.google.mk/search*"
          "*://www.google.ml/search*"
          "*://www.google.com.mm/search*"
          "*://www.google.mn/search*"
          "*://www.google.ms/search*"
          "*://www.google.com.mt/search*"
          "*://www.google.mu/search*"
          "*://www.google.mv/search*"
          "*://www.google.mw/search*"
          "*://www.google.com.mx/search*"
          "*://www.google.com.my/search*"
          "*://www.google.co.mz/search*"
          "*://www.google.com.na/search*"
          "*://www.google.com.nf/search*"
          "*://www.google.com.ng/search*"
          "*://www.google.com.ni/search*"
          "*://www.google.ne/search*"
          "*://www.google.nl/search*"
          "*://www.google.no/search*"
          "*://www.google.com.np/search*"
          "*://www.google.nr/search*"
          "*://www.google.nu/search*"
          "*://www.google.co.nz/search*"
          "*://www.google.com.om/search*"
          "*://www.google.com.pa/search*"
          "*://www.google.com.pe/search*"
          "*://www.google.com.pg/search*"
          "*://www.google.com.ph/search*"
          "*://www.google.com.pk/search*"
          "*://www.google.pl/search*"
          "*://www.google.pn/search*"
          "*://www.google.com.pr/search*"
          "*://www.google.ps/search*"
          "*://www.google.pt/search*"
          "*://www.google.com.py/search*"
          "*://www.google.com.qa/search*"
          "*://www.google.ro/search*"
          "*://www.google.ru/search*"
          "*://www.google.rw/search*"
          "*://www.google.com.sa/search*"
          "*://www.google.com.sb/search*"
          "*://www.google.sc/search*"
          "*://www.google.se/search*"
          "*://www.google.com.sg/search*"
          "*://www.google.sh/search*"
          "*://www.google.si/search*"
          "*://www.google.sk/search*"
          "*://www.google.com.sl/search*"
          "*://www.google.sn/search*"
          "*://www.google.so/search*"
          "*://www.google.sm/search*"
          "*://www.google.sr/search*"
          "*://www.google.st/search*"
          "*://www.google.com.sv/search*"
          "*://www.google.td/search*"
          "*://www.google.tg/search*"
          "*://www.google.co.th/search*"
          "*://www.google.com.tj/search*"
          "*://www.google.tk/search*"
          "*://www.google.tl/search*"
          "*://www.google.tm/search*"
          "*://www.google.tn/search*"
          "*://www.google.to/search*"
          "*://www.google.com.tr/search*"
          "*://www.google.tt/search*"
          "*://www.google.com.tw/search*"
          "*://www.google.co.tz/search*"
          "*://www.google.com.ua/search*"
          "*://www.google.co.ug/search*"
          "*://www.google.co.uk/search*"
          "*://www.google.com.uy/search*"
          "*://www.google.co.uz/search*"
          "*://www.google.com.vc/search*"
          "*://www.google.co.ve/search*"
          "*://www.google.vg/search*"
          "*://www.google.co.vi/search*"
          "*://www.google.com.vn/search*"
          "*://www.google.vu/search*"
          "*://www.google.ws/search*"
          "*://www.google.rs/search*"
          "*://www.google.co.za/search*"
          "*://www.google.co.zm/search*"
          "*://www.google.co.zw/search*"
          "*://www.google.cat/search*"
        ];
        platforms = platforms.all;
      };
    };
    "webhint" = buildFirefoxXpiAddon {
      pname = "webhint";
      version = "2.4.16";
      addonId = "{e748cb59-4901-4bea-b74a-1d8dab98e3c7}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298671/webhint-2.4.16.xpi";
      sha256 = "3709ff82efeb92c0e7301f3a3c54b528e51c6e5b4d3c617a38de03e15b01bb82";
      meta = with lib;
      {
        homepage = "https://webhint.io";
        description = "Check for best practices and common errors with your site's accessibility, speed, security and more.";
        mozPermissions = [ "<all_urls>" "webNavigation" "devtools" ];
        platforms = platforms.all;
      };
    };
    "whowrotethat" = buildFirefoxXpiAddon {
      pname = "whowrotethat";
      version = "0.22.2.0";
      addonId = "{7c53a467-2542-497a-86fb-59c2904a56d1}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4333287/whowrotethat-0.22.2.0.xpi";
      sha256 = "dfb24e750b7b150141c55353ea2f2159c161941782fe994175a256b73a60fab0";
      meta = with lib;
      {
        homepage = "https://www.mediawiki.org/wiki/WWT";
        description = "Explore authorship and revision information visually and directly in Wikipedia articles. Powered by WikiWho.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://ar.wikipedia.org/*"
          "*://de.wikipedia.org/*"
          "*://en.wikipedia.org/*"
          "*://es.wikipedia.org/*"
          "*://eu.wikipedia.org/*"
          "*://fr.wikipedia.org/*"
          "*://hu.wikipedia.org/*"
          "*://id.wikipedia.org/*"
          "*://it.wikipedia.org/*"
          "*://ja.wikipedia.org/*"
          "*://nl.wikipedia.org/*"
          "*://pl.wikipedia.org/*"
          "*://pt.wikipedia.org/*"
          "*://tr.wikipedia.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "widegithub" = buildFirefoxXpiAddon {
      pname = "widegithub";
      version = "2.3.0";
      addonId = "{72742915-c83b-4485-9023-b55dc5a1e730}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4334556/widegithub-2.3.0.xpi";
      sha256 = "685c4631cc1e514487cc66974986cf7c6f22cc8c07b43b140b48551505fa988b";
      meta = with lib;
      {
        homepage = "https://github.com/fabiocchetti/wide-github/";
        description = "Makes GitHub wide on Mozilla Firefox.";
        license = licenses.gpl3;
        mozPermissions = [ "*://github.com/*" ];
        platforms = platforms.all;
      };
    };
    "wikipedia-vector-skin" = buildFirefoxXpiAddon {
      pname = "wikipedia-vector-skin";
      version = "1.3";
      addonId = "{ebe73c0d-b0fd-4f1c-ac90-64ccc950bb0d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4061959/wikipedia_vector_skin-1.3.xpi";
      sha256 = "d81defbe5810d3c3b1ae0d7427d7ec2ff148fe846d19864bab41675db49c789b";
      meta = with lib;
      {
        description = "This extension restores the old Wikipedia Layout and Design by appending \"?useskin=vector\" to Wikipedia URLs.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "webRequest"
          "webRequestBlocking"
          "*://*.mediawiki.org/*"
          "*://*.wikipedia.org/*"
          "*://*.wiktionary.org/*"
          "*://*.wikiquote.org/*"
          "*://*.wikiversity.org/*"
          "*://*.wikivoyage.org/*"
          "*://*.wikimedia.org/*"
          "*://*.wikidata.org/*"
          "*://*.wikinews.org/*"
          "*://*.wikisource.org/*"
          "*://*.wikibooks.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "wikiwand-wikipedia-modernized" = buildFirefoxXpiAddon {
      pname = "wikiwand-wikipedia-modernized";
      version = "5.1.3";
      addonId = "jid1-D7momAzRw417Ag@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/3694180/wikiwand_wikipedia_modernized-5.1.3.xpi";
      sha256 = "ed6633af652b1e609aed8660b8251573265d38ee051c9e4c5920dbf19b325d86";
      meta = with lib;
      {
        homepage = "http://www.wikiwand.com";
        description = "Good old Wikipedia gets a great new look";
        license = {
          shortName = "wikiwand";
          fullName = "Terms of Service - Wikiwand";
          url = "https://www.wikiwand.com/terms";
          free = false;
        };
        mozPermissions = [
          "cookies"
          "storage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "*://*.wikipedia.org/*"
          "*://*.wikiwand.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "windscribe" = buildFirefoxXpiAddon {
      pname = "windscribe";
      version = "3.4.11.1";
      addonId = "@windscribeff";
      url = "https://addons.mozilla.org/firefox/downloads/file/4191851/windscribe-3.4.11.1.xpi";
      sha256 = "4e64ef6589f02d27798eb5dbc3584e99806023e69d277769f13ef1f4a24efbe4";
      meta = with lib;
      {
        homepage = "https://windscribe.com";
        description = "Windscribe helps you circumvent censorship, block ads, beacons and trackers on websites you use every day.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "proxy"
          "management"
          "tabs"
          "webRequest"
          "webRequestBlocking"
          "activeTab"
          "storage"
          "unlimitedStorage"
          "contextMenus"
          "privacy"
          "webNavigation"
          "notifications"
          "cookies"
          "browserSettings"
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "https://windscribe.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "xbrowsersync" = buildFirefoxXpiAddon {
      pname = "xbrowsersync";
      version = "1.5.2";
      addonId = "{019b606a-6f61-4d01-af2a-cea528f606da}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3546070/xbs-1.5.2.xpi";
      sha256 = "8b58ad5498273e121b1ba5abaf108d2bc9f4fb4795bd5c7e6a3778196f7a0221";
      meta = with lib;
      {
        homepage = "https://www.xbrowsersync.org/";
        description = "Browser syncing as it should be: secure, anonymous and free! Sync bookmarks across your browsers and devices, no sign up required.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "alarms"
          "bookmarks"
          "http://*/"
          "https://*/"
          "notifications"
          "storage"
          "tabs"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "yomitan" = buildFirefoxXpiAddon {
      pname = "yomitan";
      version = "24.8.12.1";
      addonId = "{6b733b82-9261-47ee-a595-2dda294a4d08}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339601/yomitan-24.8.12.1.xpi";
      sha256 = "fc3d661d6a63522e0407d1c5541b5475a30d13fa74dbcea335e160d8dd535709";
      meta = with lib;
      {
        homepage = "https://github.com/themoeway/yomitan";
        description = "Japanese dictionary with Anki integration";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "clipboardWrite"
          "unlimitedStorage"
          "declarativeNetRequest"
          "scripting"
          "contextMenus"
          "http://*/*"
          "https://*/*"
          "file://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "youronlinechoices" = buildFirefoxXpiAddon {
      pname = "youronlinechoices";
      version = "0.1.2resigned1";
      addonId = "yoc@edaa.eu";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270703/youronlinechoices_plugin-0.1.2resigned1.xpi";
      sha256 = "b878b3dfd1f3fa2a648f715a089532c936bb4c30ea0eea0f65956d147b9e53ee";
      meta = with lib;
      {
        description = "Helps preserve your choices for online behavioural advertising from companies participating in the European OBA Self-Regulatory Programme.";
        license = licenses.mpl20;
        mozPermissions = [
          "cookies"
          "http://*/*"
          "unlimitedStorage"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "youtube-alternative-switch" = buildFirefoxXpiAddon {
      pname = "youtube-alternative-switch";
      version = "2.1.1";
      addonId = "{0290a66b-cebd-47e3-9475-9da502aab1ff}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4256674/youtube_alternative_switch-2.1.1.xpi";
      sha256 = "b084a37c2f9fa125ed088a88796af3101462399f03968df0678c72fbdf803498";
      meta = with lib;
      {
        homepage = "https://github.com/willswats/youtube-alternative-switch";
        description = "Quickly switch videos between YouTube, Piped, Invidious and Chat Replay.";
        license = licenses.mit;
        mozPermissions = [ "tabs" "contextMenus" "storage" ];
        platforms = platforms.all;
      };
    };
    "youtube-nonstop" = buildFirefoxXpiAddon {
      pname = "youtube-nonstop";
      version = "0.9.2";
      addonId = "{0d7cafdd-501c-49ca-8ebb-e3341caaa55e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4187690/youtube_nonstop-0.9.2.xpi";
      sha256 = "7659d180f76ea908ea81b84ed9bdd188624eaaa62b88accbe6d8ad4e8caeff38";
      meta = with lib;
      {
        homepage = "https://github.com/lawfx/YoutubeNonStop";
        description = "Tired of getting that \"Video paused. Continue watching?\" confirmation dialog?\nThis extension autoclicks it, so you can listen to your favorite music uninterrupted.\n\nWorking on YouTube and YouTube Music!";
        license = licenses.mit;
        mozPermissions = [
          "https://www.youtube.com/*"
          "https://music.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "youtube-recommended-videos" = buildFirefoxXpiAddon {
      pname = "youtube-recommended-videos";
      version = "1.6.7";
      addonId = "myallychou@gmail.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4263531/youtube_recommended_videos-1.6.7.xpi";
      sha256 = "bb6d68b8df48c8ece44e4152783cfe401a7da6c275176366b2faa9ea78740d15";
      meta = with lib;
      {
        homepage = "https://unhook.app";
        description = "Hide YouTube related videos, comments, video suggestions wall, homepage recommendations, trending tab, and other distractions.";
        license = {
          shortName = "unhook-eula";
          fullName = "End-User License Agreement for Unhook: Remove YouTube Recommended Videos Comments";
          url = "https://addons.mozilla.org/en-US/firefox/addon/youtube-recommended-videos/eula/},";
          free = false;
        };
        mozPermissions = [
          "storage"
          "webRequest"
          "https://www.youtube.com/*"
          "https://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "youtube-redux" = buildFirefoxXpiAddon {
      pname = "youtube-redux";
      version = "3.4.1";
      addonId = "{2d4c0962-e9ff-4cad-8039-9a8b80d9b8b6}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4224361/youtube_redux-3.4.1.xpi";
      sha256 = "734dee3b7d32ca972af10dd462b0d9d5af0939ad54627733bd83b15a0021176e";
      meta = with lib;
      {
        description = "Replicate old YouTube look and features within the modern layout!";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "*://*.youtube.com/*" ];
        platforms = platforms.all;
      };
    };
    "youtube-screenshot-button" = buildFirefoxXpiAddon {
      pname = "youtube-screenshot-button";
      version = "4.3.0.61";
      addonId = "{d8b32864-153d-47fb-93ea-c273c4d1ef17}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4339643/youtube_screenshot_button-4.3.0.61.xpi";
      sha256 = "36cc485cb8669d742338cdf970aece2f145c76177fd46926ffc6aafff86e6961";
      meta = with lib;
      {
        homepage = "https://github.com/gurumukhi/youtube-screenshot";
        description = "Take screenshots from YouTube Videos &amp; YouTube Shorts. The addon adds screenshot button &amp; also enables Shift+A shortcut.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "clipboardWrite"
          "notifications"
          "*://*.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "youtube-shorts-block" = buildFirefoxXpiAddon {
      pname = "youtube-shorts-block";
      version = "1.4.1";
      addonId = "{34daeb50-c2d2-4f14-886a-7160b24d66a4}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4121795/youtube_shorts_block-1.4.1.xpi";
      sha256 = "57102a854845371b6a161b505f4372fb967e40d7e9aea9bee5e2cce798d2535a";
      meta = with lib;
      {
        description = "Play the Youtube shorts video as if it were a normal video.\nand hide \"shorts\"tab and videos (optional).";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "*://*.youtube.com/*"
          "*://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "zoom-page-we" = buildFirefoxXpiAddon {
      pname = "zoom-page-we";
      version = "19.13";
      addonId = "zoompage-we@DW-dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/4098225/zoom_page_we-19.13.xpi";
      sha256 = "00ef2331283fdfe337fa26d65fee16b1c0409b240401aabf8cae6f56ef08d601";
      meta = with lib;
      {
        description = "Zoom web pages (either per-site or per-tab) using full-page zoom, text-only zoom and minimum font size. Fit-to-width zooming can be applied to pages automatically. Fit-to-window scaling  can be applied to small images.";
        license = licenses.gpl2;
        mozPermissions = [
          "tabs"
          "webNavigation"
          "contextMenus"
          "notifications"
          "storage"
          "browserSettings"
          "http://*/*"
          "https://*/*"
          "file:///*"
        ];
        platforms = platforms.all;
      };
    };
    "zoom-redirector" = buildFirefoxXpiAddon {
      pname = "zoom-redirector";
      version = "1.0.2";
      addonId = "{2d0a18e8-6b0a-4c8c-9256-6e00c01f07fe}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3620533/zoom_redirector-1.0.2.xpi";
      sha256 = "fa505a34cabd8ba22625892cfb48103a4c06118b8f95d9fe2e49e57ef350a3a7";
      meta = with lib;
      {
        description = "Zoom Redirector transparently redirects any meeting links to use Zoom's browser based web client.";
        license = licenses.mit;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "*://*.zoom.us/*"
          "*://*.zoomgov.com/*"
        ];
        platforms = platforms.all;
      };
    };
  }