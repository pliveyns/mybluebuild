#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

echo 'Add twingate repo and install package'
rpm-ostree install -y 'dnf-command(config-manager)'
ostree remote add twingate https://packages.twingate.com/rpm/
#rpm-ostree cleanup -m
rpm-ostree install twingate

