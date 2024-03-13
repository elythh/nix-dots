{
  config,
  pkgs,
  ...
}: {
  home = {packages = with pkgs; [kanshi];};
  services.kanshi = {
    enable = true;
    systemdTarget = "hyprland-session.target";
    profiles = {
      home = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "Philips Consumer Electronics Company 247ELH AU01243009967";
            mode = "1920x1080";
            position = "2560,0";
          }
          {
            criteria = "XMI Mi Monitor 3342300023271";
            mode = "2560x1440@60";
            position = "0,0";
          }
        ];
      };
      home_duo = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "XMI Mi Monitor 3342300023271";
            mode = "2560x1440@60";
            position = "0,0";
          }
        ];
      };
      work_up = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "BNQ BenQ BL2480 JBL0008901Q";
            mode = "1920x1080@60";
            position = "1920,0";
          }
          {
            criteria = "BNQ BenQ BL2480 RAL0223001Q";
            mode = "1920x1080@60";
            position = "0,0";
          }
        ];
      };
      work_end = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "BNQ BenQ BL2480 JBL0040201Q";
            mode = "1920x1080";
            position = "0,0";
          }
          {
            criteria = "Fujitsu Siemens Computers GmbH B22T-7 LED PG YV6J068403";
            mode = "1920x1080";
            position = "1920,0";
          }
        ];
      };
      work_middle = {
        outputs = [
          {
            criteria = "eDP-1";
            status = "disable";
          }
          {
            criteria = "BNQ BenQ BL2480 JBL0040201Q";
            mode = "1920x1080";
            position = "0,0";
          }
          {
            criteria = "Fujitsu Siemens Computers GmbH B22T-7 LED PG YV6J068403";
            mode = "1920x1080";
            position = "1920,0";
          }
        ];
      };
    };
  };
}
