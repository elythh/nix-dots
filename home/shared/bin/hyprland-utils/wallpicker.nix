_:
''
  #!/usr/bin/env bash
  
  theme="$(</tmp/themeName)"
  echo $theme
  wallpaper_folder=~/.config/hypr/wallpapers/$theme/

  wallpaper_location="$(ls "$wallpaper_folder" | sort | rofi -dmenu -i -p "Select Background"  \
  							   -hover-select -me-select-entry "" \
  	 						   -me-accept-entry MousePrimary)"

  if [[ -d $wallpaper_folder/$wallpaper_location ]]; then
      wallpaper_temp="$wallpaper_location"
  elif [[ -f $wallpaper_folder/$wallpaper_location ]]; then
  	swww img "$wallpaper_folder"/"$wallpaper_temp"/"$wallpaper_location" --transition-fps 60 --transition-type any --transition-duration 3
  else
      exit 1
  fi

''
