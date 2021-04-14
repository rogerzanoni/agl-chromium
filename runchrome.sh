#!/bin/sh

PORT=$1

exec /opt/chromium84/chrome \
  --agl-appid="browser"\
  --enable-logging=stderr --v=1\
  --hs-port=$1\
  --in-process-gpu\
  --no-sandbox\
  --enable-features=UseOzonePlatform\
  --user-data-dir="/home/0/chrome"\
  --ozone-platform=wayland
