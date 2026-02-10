#!/usr/bin/env sh

case $1 in
  i) pamixer -i 5 ;;
  d) pamixer -d 5 ;;
  m) pamixer -t ;;
  *) echo "Usage: $0 {i|d|m}" ; exit 1 ;;
esac
