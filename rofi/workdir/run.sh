#!/usr/bin/env bash

theme_dir="$HOME/dotfiles/rofi/workdir/theme.rasi"
work_dir="$HOME/Work"

run_rofi() {
  rofi -dmenu -p 'Projects' -theme $theme_dir
}

work_project=($(find $work_dir -maxdepth 1 -type d | tail -n +2))

# echo $work_project[@]

$work_project | run_rofi
