layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

if [[ -n "$layout" ]]; then
  if [[ $layout == English* ]]; then
    echo "EN"
  elif [[ $layout == Russian* ]]; then
    echo "RU"
  elif [[ $layout == Ukrainian* ]]; then
    echo "UA"
  fi
fi
