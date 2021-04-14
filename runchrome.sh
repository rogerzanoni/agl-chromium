# Copyright 2021 Igalia, S.L.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/sh

PORT=$1

exec /opt/chromium84/chrome \
  --agl-appid="browser"\
  --hs-port=$1\
  --in-process-gpu\
  --no-sandbox\
  --enable-features=UseOzonePlatform\
  --user-data-dir="/home/0/chrome"\
  --ozone-platform=wayland
