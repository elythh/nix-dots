{
  programs.waybar =
    {
      style = ''
        @define-color background rgba(0, 0, 0, 0.5);
        @define-color background-alt rgba(255, 255, 255, 0.05);
        @define-color background-focus rgba(255, 255, 255, 0.1);
        @define-color border rgba(255, 255, 255, 0.1);
        @define-color red rgb(255, 69, 58);
        @define-color orange rgb(255, 159, 10);
        @define-color yellow rgb(255, 214, 10);
        @define-color green rgb(50, 215, 75);
        @define-color blue rgb(10, 132, 255);
        @define-color gray rgb(152, 152, 157);
        @define-color black rgb(28, 28, 30);
        @define-color white rgb(255, 255, 255);
       
        * {
          all: unset;
          color: @white;
          font:
            11pt "Material Design Icons",
            Inter,
            sans-serif;
        }
       
        /* Button */
        button {
          box-shadow: inset 0 -0.25rem transparent;
          border: none;
        }
       
        button:hover {
          box-shadow: inherit;
          text-shadow: inherit;
        }
       
        /* Scales & progress bars */
        scale trough,
        progressbar trough {
          background: @background;
          border-radius: 16px;
          min-width: 5rem;
        }
       
        scale highlight,
        scale progress,
        progressbar highlight,
        progressbar progress {
          background: @background-alt;
          border-radius: 16px;
          min-height: 0.5rem;
        }
       
        /* Tooltip */
        tooltip {
          background: @background;
          border: 1px solid @border;
          border-radius: 16px;
        }
       
        tooltip label {
          margin: 0.5rem;
        }
       
        /*  Waybar window */
        window#waybar {
          background: @background;
        }
       
        /* Left Modules */
        .modules-left {
          padding-left: 0.5rem;
        }
       
        /* Right Modules */
        .modules-right {
          padding-right: 0.5rem;
        }
       
        /* Modules */
        #custom-ghost,
        #workspaces,
        #window,
        #tray,
        #custom-weather,
        #custom-notification,
        #network-pulseaudio-backlight-battery,
        #clock,
        #custom-exit,
        #custom-lock,
        #custom-suspend,
        #custom-reboot,
        #custom-power {
          background: @background-alt;
          border: 1px solid @border;
          border-radius: 100px;
          margin: 0.5rem 0.25rem;
        }
       
        #custom-ghost,
        #window,
        #custom-weather,
        #tray,
        #custom-notification,
        #network-pulseaudio-backlight-battery,
        #clock {
          padding: 0 0.5rem;
        }
       
        #network,
        #pulseaudio,
        #pulseaudio-slider,
        #backlight,
        #backlight-slider,
        #battery {
          background: transparent;
          padding: 0.5rem 0.25rem;
        }
       
        #custom-exit,
        #custom-lock,
        #custom-suspend,
        #custom-reboot,
        #custom-power {
          min-width: 1rem;
          padding: 0.5rem;
        }
       
        /* Ghost */
        #custom-ghost {
          min-width: 1rem;
        }
       
        /* Hyprland workspaces */
        #workspaces {
          padding: 0.5rem 0.75rem;
        }
       
        #workspaces button {
          background: @white;
          border-radius: 100%;
          min-width: 1rem;
          margin-right: 0.75rem;
          transition: 200ms linear;
        }
       
        #workspaces button:last-child {
          margin-right: 0;
        }
       
        #workspaces button:hover {
          background: lighter(@white);
        }
       
        #workspaces button.empty {
          background: @gray;
        }
       
        #workspaces button.empty:hover {
          background: lighter(@gray);
        }
       
        #workspaces button.urgent {
          background: @red;
        }
       
        #workspaces button.urgent:hover {
          background: lighter(@red);
        }
       
        #workspaces button.special {
          background: @yellow;
        }
       
        #workspaces button.special:hover {
          background: lighter(@yellow);
        }
       
        #workspaces button.active {
          background: @blue;
        }
       
        #workspaces button.active:hover {
          background: lighter(@blue);
        }
       
        /* Hyprland window */
        #window {
          min-width: 1rem;
        }
       
        window#waybar.empty #window {
          background: transparent;
          border: none;
        }
       
        /* Systray */
        #tray > .passive {
          -gtk-icon-effect: dim;
        }
       
        #tray > .needs-attention {
          -gtk-icon-effect: highlight;
          background: @red;
        }
       
        menu {
          background: @background;
          border: 1px solid @border;
          border-radius: 8px;
        }
       
        menu separator {
          background: @border;
        }
       
        menu menuitem {
          background: transparent;
          padding: 0.5rem;
          transition: 200ms;
        }
       
        menu menuitem:hover {
          background: @background-focus;
        }
       
        menu menuitem:first-child {
          border-radius: 8px 8px 0 0;
        }
       
        menu menuitem:last-child {
          border-radius: 0 0 8px 8px;
        }
       
        menu menuitem:only-child {
          border-radius: 8px;
        }
       
        /* Notification */
        #custom-notification {
          color: @yellow;
        }
       
        /* Network */
        #network.disconnected {
          color: @red;
        }
       
        /* Pulseaudio  */
        #pulseaudio.muted {
          color: @red;
        }
       
        #pulseaudio-slider highlight {
          background: @white;
          border: 1px solid @border;
        }
       
        /* Backlight */
        #backlight-slider highlight {
          background: @white;
          border: 1px solid @border;
        }
       
        /* Battery */
        #battery.charging,
        #battery.plugged {
          color: @green;
        }
       
        #battery.critical:not(.charging) {
          color: @red;
          animation: blink 0.5s steps(12) infinite alternate;
        }
       
        /* Powermenu */
        #custom-exit {
          color: @blue;
        }
       
        #custom-lock {
          color: @green;
        }
       
        #custom-suspend {
          color: @yellow;
        }
       
        #custom-reboot {
          color: @orange;
        }
       
        #custom-power {
          color: @red;
        }
       
        /* Keyframes */
        @keyframes blink {
          to {
            color: @white;
          }
        }
      '';
    };
}
