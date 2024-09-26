#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

echo 'Download and install twingate install script'
curl -Lo /tmp/twingate.sh https://binaries.twingate.com/client/linux/install.shell
bash /tmp/twingate.sh

