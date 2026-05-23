{ inputs, pkgs, ... }:
{
  environment.systemPackages = [
    inputs.noctalia.packages.${pkgs.system}.default
  ];

  home-manager.users.gonzo = {
  	imports = [
	  inputs.noctalia.homeModules.default  		
  	];
  

  # Noctalia settings - mirrors ~/.config/noctalia/settings.json
  programs.noctalia-shell = {
    enable = true;
    settings = {
		bar = {
				  barType = "simple";
				  position = "top";
				  monitors = [ "eDP-1" ];
				  density = "comfortable";
				  showOutline = true;
				  showCapsule = true;
				  capsuleOpacity = 1;
				  capsuleColorKey = "none";
				  widgetSpacing = 6;
				  contentPadding = 2;
				  fontScale = 1.02;
				  enableExclusionZoneInset = true;
				  backgroundOpacity = 0.93;
				  useSeparateOpacity = false;
				  marginVertical = 4;
				  marginHorizontal = 4;
				  frameThickness = 8;
				  frameRadius = 12;
				  outerCorners = false;
				  hideOnOverview = false;
				  displayMode = "always_visible";
				  autoHideDelay = 500;
				  autoShowDelay = 150;
				  showOnWorkspaceSwitch = true;

				  widgets = {
				    left = [
				      {
				        id = "Launcher";
				        icon = "rocket";
				        iconColor = "none";
				        useDistroLogo = true;
				        customIconPath = "";
				        enableColorization = false;
				        colorizeSystemIcon = "none";
				        colorizeSystemText = "none";
				      }
				      {
				        id = "Clock";
				        formatHorizontal = "h:mm AP";
				        formatVertical = "HH mm - dd MM";
				        tooltipFormat = "HH:mm ddd, MMM dd";
				        clockColor = "none";
				        customFont = "";
				        useCustomFont = false;
				      }
				      {
				        id = "SystemMonitor";
				        compactMode = false;
				        diskPath = "/";
				        iconColor = "none";
				        textColor = "none";
				        useMonospaceFont = true;
				        usePadding = false;
				        showCpuCores = false;
				        showCpuFreq = false;
				        showCpuTemp = true;
				        showCpuUsage = true;
				        showDiskAvailable = false;
				        showDiskUsage = true;
				        showDiskUsageAsPercent = true;
				        showGpuTemp = false;
				        showLoadAverage = false;
				        showMemoryAsPercent = false;
				        showMemoryUsage = true;
				        showNetworkStats = false;
				        showSwapUsage = false;
				      }
				      {
				        id = "plugin:slowbongo";
				        defaultSettings = {
				          catColor = "default";
				          catOffsetY = 0;
				          catSize = 1;
				          idleTimeout = 150;
				          raveMode = false;
				          tappyMode = false;
				          useMprisFilter = false;
				          waitingTimeout = 30000;
				        };
				      }
				      {
				        id = "ActiveWindow";
				        colorizeIcons = false;
				        hideMode = "hidden";
				        maxWidth = 145;
				        scrollingMode = "always";
				        showIcon = true;
				        showText = false;
				        textColor = "primary";
				        useFixedWidth = false;
				      }
				      {
				        id = "MediaMini";
				        compactMode = false;
				        hideMode = "hidden";
				        hideWhenIdle = false;
				        maxWidth = 145;
				        panelShowAlbumArt = true;
				        scrollingMode = "hover";
				        showAlbumArt = true;
				        showArtistFirst = true;
				        showProgressRing = true;
				        showVisualizer = false;
				        textColor = "none";
				        useFixedWidth = false;
				        visualizerType = "linear";
				      }
				    ];

				    center = [
				      {
				        id = "plugin:workspace-overview";
				        defaultSettings = { };
				      }
				      {
				        id = "AudioVisualizer";
				        colorName = "error";
				        hideWhenIdle = false;
				        width = 150;
				      }
				      {
				        id = "plugin:special-workspaces";
				        defaultSettings = {
				          drawer = true;
				          expandDirection = "up";
				          hideEmptyWorkspaces = false;
				          mainIcon = "layout-grid";
				          panelBackgroundColor = "none";
				          panelBackgroundEnabled = false;
				          primaryBorderRadius = 1;
				          primaryFocusColor = "primary";
				          primaryPillColor = "none";
				          primaryShowPill = true;
				          primarySize = 0.9;
				          primarySymbolColor = "none";
				          workspaces = [
				            {
				              name = "communication";
				              icon = "message";
				              borderRadius = 1;
				              focusColor = "primary";
				              pillColor = "primary";
				              showPill = true;
				              size = 0.9;
				              symbolColor = "none";
				            }
				            {
				              name = "music";
				              icon = "music";
				              borderRadius = 1;
				              focusColor = "primary";
				              pillColor = "primary";
				              showPill = true;
				              size = 0.9;
				              symbolColor = "none";
				            }
				            {
				              name = "agent";
				              icon = "michelin-star";
				              borderRadius = 1;
				              focusColor = "primary";
				              pillColor = "primary";
				              showPill = true;
				              size = 0.9;
				              symbolColor = "none";
				            }
				          ];
				        };
				      }
				      {
				        id = "Workspace";
				        characterCount = 2;
				        colorizeIcons = false;
				        emptyColor = "secondary";
				        enableScrollWheel = true;
				        focusedColor = "primary";
				        followFocusedScreen = false;
				        fontWeight = "semibold";
				        groupedBorderOpacity = 1;
				        hideUnoccupied = true;
				        iconScale = 0.8;
				        labelMode = "index";
				        occupiedColor = "secondary";
				        pillSize = 0.6;
				        showApplications = true;
				        showApplicationsHover = true;
				        showBadge = true;
				        showLabelsOnlyWhenOccupied = true;
				        unfocusedIconsOpacity = 1;
				      }
				    ];

				    right = [
				      {
				        id = "ControlCenter";
				        icon = "noctalia";
				        useDistroLogo = false;
				        customIconPath = "";
				        enableColorization = false;
				        colorizeDistroLogo = false;
				        colorizeSystemIcon = "none";
				        colorizeSystemText = "none";
				      }
				      {
				        id = "plugin:clipper";
				        defaultSettings = {
				          autoPaste = false;
				          autoPasteDelay = 300;
				          autoPasteOnRightClick = false;
				          cardColors = { };
				          customColors = { };
				          enableTodoIntegration = false;
				          fullscreenMode = false;
				          hidePanelBackground = false;
				          notecardsEnabled = true;
				          panelHeight = 0;
				          panelWidth = 1450;
				          pincardsEnabled = true;
				          showCloseButton = true;
				        };
				      }
				      {
				        id = "NotificationHistory";
				        hideWhenZero = false;
				        hideWhenZeroUnread = false;
				        iconColor = "none";
				        showUnreadBadge = true;
				        unreadBadgeColor = "primary";
				      }
				      {
				        id = "Volume";
				        displayMode = "onhover";
				        iconColor = "none";
				        textColor = "none";
				        middleClickCommand = "pwvucontrol || pavucontrol";
				      }
				      {
				        id = "Battery";
				        deviceNativePath = "__default__";
				        displayMode = "graphic-clean";
				        hideIfIdle = false;
				        hideIfNotDetected = true;
				        showNoctaliaPerformance = false;
				        showPowerProfiles = false;
				      }
				      {
				        id = "plugin:screen-shot-and-record";
				        defaultSettings = {
				          enableCross = true;
				          enableWindowsSelection = true;
				          keepSourceScreenshot = false;
				          recordingNotifications = true;
				          recordingSavePath = "~/Videos";
				          savePath = "~/Pictures/Screenshots";
				          screenshotEditor = "swappy";
				        };
				      }
				      {
				        id = "plugin:catwalk";
				        defaultSettings = {
				          hideBackground = false;
				          minimumThreshold = 10;
				        };
				      }
				      {
				        id = "Tray";
				        blacklist = [ ];
				        chevronColor = "none";
				        colorizeIcons = false;
				        drawerEnabled = true;
				        hidePassive = false;
				        pinned = [ ];
				      }
				    ];
				  };

				  mouseWheelAction = "workspace";
				  reverseScroll = false;
				  mouseWheelWrap = true;
				  middleClickAction = "settings";
				  middleClickFollowMouse = true;
				  middleClickCommand = "";
				  rightClickAction = "controlCenter";
				  rightClickFollowMouse = true;
				  rightClickCommand = "";

				  screenOverrides = [
				    {
				      name = "HDMI-A-1";
				      enabled = false;
				    }
				    {
				      name = "DP-3";
				      enabled = true;
				      density = "spacious";
				      displayMode = "always_visible";
				      position = "right";
				      widgets = {
				        left = [
				          {
				            id = "plugin:workspace-overview";
				            defaultSettings = { };
				          }
				          {
				            id = "Clock";
				            formatHorizontal = "h:mm AP";
				            formatVertical = "HH mm - dd MM";
				            tooltipFormat = "HH:mm ddd, MMM dd";
				            clockColor = "none";
				            customFont = "";
				            useCustomFont = false;
				          }
				          {
				            id = "SystemMonitor";
				            compactMode = true;
				            diskPath = "/";
				            iconColor = "none";
				            textColor = "none";
				            useMonospaceFont = true;
				            usePadding = false;
				            showCpuCores = false;
				            showCpuFreq = false;
				            showCpuTemp = true;
				            showCpuUsage = true;
				            showDiskAvailable = false;
				            showDiskUsage = false;
				            showDiskUsageAsPercent = false;
				            showGpuTemp = false;
				            showLoadAverage = false;
				            showMemoryAsPercent = false;
				            showMemoryUsage = true;
				            showNetworkStats = false;
				            showSwapUsage = false;
				          }
				          {
				            id = "ActiveWindow";
				            colorizeIcons = false;
				            hideMode = "hidden";
				            maxWidth = 145;
				            scrollingMode = "hover";
				            showIcon = true;
				            showText = true;
				            textColor = "none";
				            useFixedWidth = false;
				          }
				          {
				            id = "MediaMini";
				            compactMode = false;
				            hideMode = "hidden";
				            hideWhenIdle = false;
				            maxWidth = 145;
				            panelShowAlbumArt = true;
				            scrollingMode = "hover";
				            showAlbumArt = true;
				            showArtistFirst = true;
				            showProgressRing = true;
				            showVisualizer = false;
				            textColor = "none";
				            useFixedWidth = false;
				            visualizerType = "linear";
				          }
				        ];

				        center = [
				          {
				            id = "plugin:special-workspaces";
				            defaultSettings = {
				              drawer = true;
				              expandDirection = "up";
				              hideEmptyWorkspaces = false;
				              mainIcon = "layout-grid";
				              panelBackgroundColor = "none";
				              panelBackgroundEnabled = false;
				              primaryBorderRadius = 1;
				              primaryFocusColor = "primary";
				              primaryPillColor = "none";
				              primaryShowPill = true;
				              primarySize = 0.9;
				              primarySymbolColor = "none";
				              workspaces = [
				                {
				                  name = "communication";
				                  icon = "message";
				                  borderRadius = 1;
				                  focusColor = "primary";
				                  pillColor = "primary";
				                  showPill = true;
				                  size = 0.9;
				                  symbolColor = "none";
				                }
				                {
				                  name = "music";
				                  icon = "music";
				                  borderRadius = 1;
				                  focusColor = "primary";
				                  pillColor = "primary";
				                  showPill = true;
				                  size = 0.9;
				                  symbolColor = "none";
				                }
				                {
				                  name = "agent";
				                  icon = "michelin-star";
				                  borderRadius = 1;
				                  focusColor = "primary";
				                  pillColor = "primary";
				                  showPill = true;
				                  size = 0.9;
				                  symbolColor = "none";
				                }
				              ];
				            };
				          }
				          {
				            id = "Workspace";
				            characterCount = 2;
				            colorizeIcons = false;
				            emptyColor = "secondary";
				            enableScrollWheel = true;
				            focusedColor = "primary";
				            followFocusedScreen = false;
				            fontWeight = "bold";
				            groupedBorderOpacity = 1;
				            hideUnoccupied = false;
				            iconScale = 0.8;
				            labelMode = "index";
				            occupiedColor = "secondary";
				            pillSize = 0.6;
				            showApplications = false;
				            showApplicationsHover = false;
				            showBadge = true;
				            showLabelsOnlyWhenOccupied = true;
				            unfocusedIconsOpacity = 1;
				          }
				        ];

				        right = [
				          {
				            id = "ControlCenter";
				            icon = "noctalia";
				            useDistroLogo = false;
				            customIconPath = "";
				            enableColorization = false;
				            colorizeDistroLogo = false;
				            colorizeSystemIcon = "none";
				            colorizeSystemText = "none";
				          }
				          {
				            id = "plugin:clipper";
				            defaultSettings = {
				              autoPaste = false;
				              autoPasteDelay = 300;
				              autoPasteOnRightClick = false;
				              cardColors = { };
				              customColors = { };
				              enableTodoIntegration = false;
				              fullscreenMode = false;
				              hidePanelBackground = false;
				              notecardsEnabled = true;
				              panelHeight = 0;
				              panelWidth = 1450;
				              pincardsEnabled = true;
				              showCloseButton = true;
				            };
				          }
				          {
				            id = "NotificationHistory";
				            hideWhenZero = false;
				            hideWhenZeroUnread = false;
				            iconColor = "none";
				            showUnreadBadge = true;
				            unreadBadgeColor = "primary";
				          }
				          {
				            id = "Volume";
				            displayMode = "onhover";
				            iconColor = "none";
				            textColor = "none";
				            middleClickCommand = "pwvucontrol || pavucontrol";
				          }
				          {
				            id = "plugin:screen-shot-and-record";
				            defaultSettings = {
				              enableCross = true;
				              enableWindowsSelection = true;
				              keepSourceScreenshot = false;
				              recordingNotifications = true;
				              recordingSavePath = "~/Videos";
				              savePath = "~/Pictures/Screenshots";
				              screenshotEditor = "swappy";
				            };
				          }
				          {
				            id = "plugin:catwalk";
				            defaultSettings = {
				              hideBackground = false;
				              minimumThreshold = 10;
				            };
				          }
				          {
				            id = "plugin:weather-indicator";
				            defaultSettings = {
				              customColor = "none";
				              showConditionIcon = true;
				              showTempUnit = true;
				              showTempValue = true;
				              tooltipOption = "everything";
				            };
				          }
				          {
				            id = "Tray";
				            blacklist = [ ];
				            chevronColor = "none";
				            colorizeIcons = false;
				            drawerEnabled = true;
				            hidePassive = false;
				            pinned = [ ];
				          }
				          { id = "plugin:mimeapp-gui"; }
				        ];
				      };
				    }
				  ];
				};

				general = {
				  avatarImage = "/home/gonzo/Pictures/selfies/Gonzopfp.jpg";
				  dimmerOpacity = 0.2;
				  showScreenCorners = false;
				  forceBlackScreenCorners = false;
				  scaleRatio = 0.8999999999999999;
				  radiusRatio = 1.3900000000000001;
				  iRadiusRatio = 1.11;
				  boxRadiusRatio = 1;
				  screenRadiusRatio = 1;
				  animationSpeed = 1;
				  animationDisabled = false;
				  compactLockScreen = false;
				  lockScreenAnimations = true;
				  lockOnSuspend = true;
				  showSessionButtonsOnLockScreen = true;
				  showHibernateOnLockScreen = true;
				  enableLockScreenMediaControls = true;
				  enableShadows = true;
				  enableBlurBehind = true;
				  shadowDirection = "bottom_left";
				  shadowOffsetX = -2;
				  shadowOffsetY = 2;
				  language = "";
				  allowPanelsOnScreenWithoutBar = true;
				  showChangelogOnStartup = true;
				  telemetryEnabled = true;
				  enableLockScreenCountdown = true;
				  lockScreenCountdownDuration = 10000;
				  autoStartAuth = false;
				  allowPasswordWithFprintd = false;
				  clockStyle = "custom";
				  clockFormat = "hh\\nmm";
				  passwordChars = true;
				  lockScreenMonitors = [ ];
				  lockScreenBlur = 0.07;
				  lockScreenTint = 0;

				  keybinds = {
				    keyUp = [ "Up" ];
				    keyDown = [ "Down" ];
				    keyLeft = [ "Left" ];
				    keyRight = [ "Right" ];
				    keyEnter = [ "Return" "Enter" ];
				    keyEscape = [ "Esc" ];
				    keyRemove = [ "Del" ];
				  };

				  reverseScroll = false;
				  smoothScrollEnabled = true;
				};

				ui = {
				  fontDefault = "Adwaita Mono";
				  fontFixed = "Adwaita Mono";
				  fontDefaultScale = 1;
				  fontFixedScale = 1;
				  tooltipsEnabled = true;
				  scrollbarAlwaysVisible = true;
				  boxBorderEnabled = true;
				  panelBackgroundOpacity = 1;
				  translucentWidgets = true;
				  panelsAttachedToBar = true;
				  settingsPanelMode = "attached";
				  settingsPanelSideBarCardStyle = true;
				};

				location = {
				  name = "owensboro. ky";
				  weatherEnabled = true;
				  weatherShowEffects = true;
				  weatherTaliaMascotAlways = false;
				  useFahrenheit = true;
				  use12hourFormat = true;
				  showWeekNumberInCalendar = true;
				  showCalendarEvents = true;
				  showCalendarWeather = true;
				  analogClockInCalendar = false;
				  firstDayOfWeek = 1;
				  hideWeatherTimezone = false;
				  hideWeatherCityName = true;
				  autoLocate = false;
				};

				calendar = {
				  cards = [
				    { id = "calendar-header-card"; enabled = true; }
				    { id = "calendar-month-card"; enabled = true; }
				    { id = "weather-card"; enabled = true; }
				  ];
				};

				wallpaper = {
				  enabled = true;
				  overviewEnabled = false;
				  directory = "/home/gonzo/Pictures/NixPapers";
				  monitorDirectories = [ ];
				  enableMultiMonitorDirectories = true;
				  showHiddenFiles = true;
				  viewMode = "recursive";
				  setWallpaperOnAllMonitors = false;
				  linkLightAndDarkWallpapers = true;
				  fillMode = "crop";
				  fillColor = "#000000";
				  useSolidColor = false;
				  solidColor = "#1a1a2e";
				  automationEnabled = true;
				  wallpaperChangeMode = "random";
				  randomIntervalSec = 7500;
				  transitionDuration = 1500;
				  transitionType = [
				    "fade"
				    "disc"
				    "stripes"
				    "wipe"
				    "pixelate"
				    "honeycomb"
				  ];
				  skipStartupTransition = false;
				  transitionEdgeSmoothness = 0.05;
				  panelPosition = "bottom_center";
				  hideWallpaperFilenames = true;
				  useOriginalImages = false;
				  overviewBlur = 0.4;
				  overviewTint = 0.6;
				  useWallhaven = false;
				  wallhavenQuery = "";
				  wallhavenSorting = "relevance";
				  wallhavenOrder = "desc";
				  wallhavenCategories = "111";
				  wallhavenPurity = "100";
				  wallhavenRatios = "";
				  wallhavenApiKey = "";
				  wallhavenResolutionMode = "atleast";
				  wallhavenResolutionWidth = "";
				  wallhavenResolutionHeight = "";
				  sortOrder = "name";

				  favorites = [
				    {
				      appearance = "dark";
				      colorScheme = "Tokyo Night";
				      darkMode = true;
				      generationMethod = "tonal-spot";
				      paletteColors = [ "#d8b9ff" "#cfc2da" "#f2b7c1" "#ffb4ab" ];
				      path = "/home/gonzo/Pictures/Niri-Wallpapers/2bSynthWave.jpg";
				      useWallpaperColors = true;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#e6b4ff" "#d9bde4" "#ffb2bd" "#ffb4ab" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/OhYouUseArch.png";
				      useWallpaperColors = true;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "dysfunctional";
				      paletteColors = [ "#e467d0" "#de5b87" "#de705b" "#fd4663" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/2bSynthWave.jpg";
				      useWallpaperColors = true;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#b58fff" "#c79aff" "#d8b4ff" "#ff6f9b" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/2bVaporWaveGlitch.png";
				      useWallpaperColors = false;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#b58fff" "#c79aff" "#d8b4ff" "#ff6f9b" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/vaporWaveSkyLine.jpg";
				      useWallpaperColors = false;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#b58fff" "#c79aff" "#d8b4ff" "#ff6f9b" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/toykonight.png";
				      useWallpaperColors = false;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#b58fff" "#c79aff" "#d8b4ff" "#ff6f9b" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/FateGrandOrder.jpg";
				      useWallpaperColors = false;
				    }
				    {
				      appearance = "dark";
				      colorScheme = "Lilac AMOLED";
				      darkMode = true;
				      generationMethod = "content";
				      paletteColors = [ "#b58fff" "#c79aff" "#d8b4ff" "#ff6f9b" ];
				      path = "/home/gonzo/Pictures/NoctaliaPapers/EraToArch.jpg";
				      useWallpaperColors = false;
				    }
				  ];
				};

				appLauncher = {
				  enableClipboardHistory = true;
				  autoPasteClipboard = false;
				  enableClipPreview = true;
				  clipboardWrapText = true;
				  enableClipboardSmartIcons = true;
				  enableClipboardChips = true;
				  clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
				  clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
				  position = "center";
				  pinnedApps = [
				    "org.mozilla.Thunderbird"
				    "org.keepassxc.KeePassXC"
				    "com.mitchellh.ghostty"
				    "spotify-launcher"
				    "equibop"
				    "jellyfin-mpv-shim"
				    "firefox-developer-edition"
				    "librewolf"
				    "emacsclient"
				    "code-oss"
				    "obsidian"
				    "mstystudio.appimage_2_5_6"
				    "helium"
				  ];
				  sortByMostUsed = true;
				  terminalCommand = "ghostty -e";
				  customLaunchPrefixEnabled = false;
				  customLaunchPrefix = "";
				  viewMode = "grid";
				  showCategories = true;
				  iconMode = "native";
				  showIconBackground = false;
				  enableSettingsSearch = true;
				  enableWindowsSearch = true;
				  enableSessionSearch = true;
				  ignoreMouseInput = false;
				  screenshotAnnotationTool = "";
				  overviewLayer = false;
				  density = "comfortable";
				};

				controlCenter = {
				  position = "close_to_bar_button";
				  diskPath = "/";
				  shortcuts = {
				    left = [
				      { id = "Network"; }
				      { id = "Bluetooth"; }
				      { id = "WallpaperSelector"; }
				      { id = "NoctaliaPerformance"; }
				    ];
				    right = [
				      { id = "Notifications"; }
				      { id = "PowerProfile"; }
				      { id = "KeepAwake"; }
				      { id = "NightLight"; }
				    ];
				  };
				  cards = [
				    { id = "profile-card"; enabled = true; }
				    { id = "shortcuts-card"; enabled = true; }
				    { id = "audio-card"; enabled = true; }
				    { id = "brightness-card"; enabled = false; }
				    { id = "weather-card"; enabled = true; }
				    { id = "media-sysmon-card"; enabled = true; }
				  ];
				};

				systemMonitor = {
				  cpuWarningThreshold = 80;
				  cpuCriticalThreshold = 100;
				  tempWarningThreshold = 90;
				  tempCriticalThreshold = 100;
				  gpuWarningThreshold = 80;
				  gpuCriticalThreshold = 90;
				  memWarningThreshold = 90;
				  memCriticalThreshold = 95;
				  swapWarningThreshold = 80;
				  swapCriticalThreshold = 90;
				  diskWarningThreshold = 80;
				  diskCriticalThreshold = 90;
				  diskAvailWarningThreshold = 20;
				  diskAvailCriticalThreshold = 10;
				  batteryWarningThreshold = 20;
				  batteryCriticalThreshold = 5;
				  enableDgpuMonitoring = true;
				  useCustomColors = false;
				  warningColor = "";
				  criticalColor = "";
				  externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
				};

				noctaliaPerformance = {
				  disableWallpaper = false;
				  disableDesktopWidgets = true;
				};

				dock = {
				  enabled = true;
				  position = "bottom";
				  displayMode = "exclusive";
				  dockType = "floating";
				  backgroundOpacity = 0.75;
				  floatingRatio = 1.33;
				  size = 1.35;
				  onlySameOutput = true;
				  monitors = [ 
				  "eDP-1"
				  #"HDMI-A-1"
				  #"DP-3"
				   ];
				  pinnedApps = [
				    "com.mitchellh.ghostty"
				    "steam"
				    "librewolf"
				    "org.gnome.Nautilus"
				    "equibop"
				    "emacs"
				    "firefox-devedition"
				    "org.keepassxc.KeePassXC"
				  ];
				  colorizeIcons = false;
				  showLauncherIcon = true;
				  launcherPosition = "start";
				  launcherUseDistroLogo = true;
				  launcherIcon = "hyprland";
				  launcherIconColor = "primary";
				  pinnedStatic = true;
				  inactiveIndicators = true;
				  groupApps = true;
				  groupContextMenuMode = "extended";
				  groupClickAction = "cycle";
				  groupIndicatorStyle = "dots";
				  deadOpacity = 1;
				  animationSpeed = 1;
				  sitOnFrame = true;
				  showDockIndicator = false;
				  indicatorThickness = 3;
				  indicatorColor = "primary";
				  indicatorOpacity = 0.6;
				};

				network = {
				  bluetoothRssiPollingEnabled = false;
				  bluetoothRssiPollIntervalMs = 60000;
				  networkPanelView = "wifi";
				  wifiDetailsViewMode = "grid";
				  bluetoothDetailsViewMode = "grid";
				  bluetoothHideUnnamedDevices = false;
				  disableDiscoverability = false;
				  bluetoothAutoConnect = true;
				};

				sessionMenu = {
				  enableCountdown = true;
				  countdownDuration = 10000;
				  position = "center";
				  showHeader = true;
				  showKeybinds = true;
				  largeButtonsStyle = true;
				  largeButtonsLayout = "single-row";
				  powerOptions = [
				    { action = "lock";            command = ""; countdownEnabled = true; enabled = true;  keybind = "1"; }
				    { action = "suspend";         command = ""; countdownEnabled = true; enabled = true;  keybind = "2"; }
				    { action = "hibernate";       command = ""; countdownEnabled = true; enabled = true;  keybind = "3"; }
				    { action = "reboot";          command = ""; countdownEnabled = true; enabled = true;  keybind = "4"; }
				    { action = "logout";          command = ""; countdownEnabled = true; enabled = true;  keybind = "5"; }
				    { action = "shutdown";        command = ""; countdownEnabled = true; enabled = true;  keybind = "6"; }
				    { action = "rebootToUefi";    command = ""; countdownEnabled = true; enabled = true;  keybind = "7"; }
				    { action = "userspaceReboot"; command = ""; countdownEnabled = true; enabled = false; keybind = "";  }
				  ];
				};

				notifications = {
				  enabled = true;
				  enableMarkdown = true;
				  density = "default";
				  monitors = [ ];
				  location = "top_left";
				  overlayLayer = true;
				  backgroundOpacity = 1;
				  respectExpireTimeout = false;
				  lowUrgencyDuration = 3;
				  normalUrgencyDuration = 8;
				  criticalUrgencyDuration = 15;
				  clearDismissed = true;
				  saveToHistory = {
				    low = true;
				    normal = true;
				    critical = true;
				  };
				  sounds = {
				    enabled = true;
				    volume = 0.5;
				    separateSounds = false;
				    criticalSoundFile = "";
				    normalSoundFile = "";
				    lowSoundFile = "";
				    excludedApps = "discord,firefox,chrome,chromium,edge";
				  };
				  enableMediaToast = false;
				  enableKeyboardLayoutToast = true;
				  enableBatteryToast = true;
				};

				osd = {
				  enabled = true;
				  location = "top_right";
				  autoHideMs = 2000;
				  overlayLayer = true;
				  backgroundOpacity = 1;
				  enabledTypes = [ 0 1 2 ];
				  monitors = [ "DP-3" ];
				};

				audio = {
				  volumeStep = 5;
				  volumeOverdrive = true;
				  spectrumFrameRate = 144;
				  visualizerType = "wave";
				  spectrumMirrored = true;
				  mprisBlacklist = [ ];
				  preferredPlayer = "spotify";
				  volumeFeedback = true;
				  volumeFeedbackSoundFile = "";
				};

				brightness = {
				  brightnessStep = 5;
				  enforceMinimum = true;
				  enableDdcSupport = false;
				  backlightDeviceMappings = [ ];
				};

				colorSchemes = {
				  useWallpaperColors = true;
				  predefinedScheme = "Lilac AMOLED";
				  darkMode = true;
				  schedulingMode = "off";
				  manualSunrise = "06:30";
				  manualSunset = "18:30";
				  generationMethod = "content";
				  monitorForColors = "";
				  syncGsettings = true;
				};

				templates = {
				  activeTemplates = [
				    { id = "ghostty";     enabled = true; }
				    { id = "emacs";       enabled = true; }
				    { id = "alacritty";   enabled = true; }
				    { id = "btop";        enabled = true; }
				    { id = "cava";        enabled = true; }
				    { id = "discord";     enabled = true; }
				    { id = "fuzzel";      enabled = true; }
				    { id = "foot";        enabled = true; }
				    { id = "gtk";         enabled = true; }
				    { id = "helix";       enabled = true; }
				    { id = "hyprland";    enabled = true; }
				    { id = "hyprtoolkit"; enabled = true; }
				    { id = "labwc";       enabled = true; }
				    { id = "kitty";       enabled = true; }
				    { id = "kcolorscheme"; enabled = true; }
				    { id = "pywalfox";    enabled = true; }
				    { id = "scroll";      enabled = true; }
				    { id = "mango";       enabled = true; }
				    { id = "niri";        enabled = true; }
				    { id = "spicetify";   enabled = true; }
				    { id = "starship";    enabled = true; }
				    { id = "qt";          enabled = true; }
				    { id = "sway";        enabled = true; }
				    { id = "code";        enabled = true; }
				    { id = "walker";      enabled = true; }
				    { id = "zed";         enabled = true; }
				    { id = "zathura";     enabled = true; }
				    { id = "yazi";        enabled = true; }
				    { id = "vicinae";     enabled = true; }
				    { id = "telegram";    enabled = true; }
				    { id = "wezterm";     enabled = true; }
				    { id = "zenBrowser";  enabled = true; }
				    { id = "steam";       enabled = true; }
				  ];
				  enableUserTheming = false;
				};

				nightLight = {
				  enabled = false;
				  forced = false;
				  autoSchedule = true;
				  nightTemp = "3765";
				  dayTemp = "6500";
				  manualSunrise = "06:30";
				  manualSunset = "18:30";
				};

				hooks = {
				  enabled = true;
				  wallpaperChange = "";
				  darkModeChange = "";
				  screenLock = "";
				  screenUnlock = "";
				  performanceModeEnabled = "";
				  performanceModeDisabled = "";
				  startup = "";
				  session = "";
				  colorGeneration = "";
				};

				plugins = {
				  autoUpdate = true;
				  notifyUpdates = true;
				};

				idle = {
				  enabled = true;
				  screenOffTimeout = 600;
				  lockTimeout = 660;
				  suspendTimeout = 1800;
				  fadeDuration = 5;
				  screenOffCommand = "";
				  lockCommand = "";
				  suspendCommand = "";
				  resumeScreenOffCommand = "";
				  resumeLockCommand = "";
				  resumeSuspendCommand = "";
				  customCommands = "[]";
				};

				desktopWidgets = {
				  enabled = false;
				  overviewEnabled = true;
				  gridSnap = false;
				  gridSnapScale = false;
				  monitorWidgets = [
				    {
				      name = "DP-3";
				      widgets = [
				        {
				          id = "Clock";
				          clockColor = "none";
				          clockStyle = "minimal";
				          customFont = "Material Symbols Outlined";
				          format = "h:mm AP";
				          roundedCorners = true;
				          scale = 3.332034481505415;
				          showBackground = true;
				          useCustomFont = true;
				          x = 16;
				          y = 16;
				        }
				        {
				          id = "MediaPlayer";
				          hideMode = "visible";
				          roundedCorners = true;
				          scale = 1.3709548465365364;
				          showAlbumArt = true;
				          showBackground = true;
				          showButtons = true;
				          showVisualizer = true;
				          visualizerType = "linear";
				          x = 353;
				          y = 866;
				        }
				      ];
				    }
				  ];		
     };
    };
   };
 };   
}
