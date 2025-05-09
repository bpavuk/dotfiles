#!/bin/bash

stringContain() { case $2 in *$1* ) return 0;; *) return 1;; esac ;}

if [ $# -ne 1 ]; then
  echo "usage: toggle_eww_window.sh <eww_window_name>"
  exit 1
fi

name=$1
windows=$(eww active-windows)

if stringContain "$name" "$windows"; then
  eww close $name
  echo "window closed"
  exit 0
fi

eww open $name
