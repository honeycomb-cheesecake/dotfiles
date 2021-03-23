#!/usr/bin/env bash

set -eo pipefail

function press-enter-to-continue() {
  echo
  echo "-- Press ENTER to continue --"
  read
}

echo "Updating/upgrading existing apt packages..."
echo
sudo apt update
sudo apt upgrade -y

# Reference:
# https://app.tettra.co/teams/adzerk/pages/new-engineer-access-to-tooling#header-7vnpc-a-working-environment
echo
echo "Installing various apt packages..."
echo
sudo apt install -y \
  curl \
  git-all \
  libsecret-1-0 libsecret-1-dev

# This part is difficult to automate. It involves clicking a button on the Slack
# website to download a .deb file (the download URL isn't clear from the
# markup), then running a command like (actual filename will vary):
#
#   sudo dpkg -i ~/Downloads/slack-desktop-4.14.0-amd64.deb
echo "*** Install Slack, if you haven't already! ***"
press-enter-to-continue

if ! [[ -f "$HOME/.ssh/kevel.pem" ]]; then
  echo "*** Obtain ~/.ssh/kevel.pem and ~/.ssh/config ***"
  press-enter-to-continue
fi

echo "*** Install Datadog agent, using the one-liner here: ***"
echo "    https://app.datadoghq.com/account/settings#agent/ubuntu"
press-enter-to-continue

# ufw (universal firewall) should be enabled by default, which is great, because
# it's an audit requirement that we all have a firewall enabled.
#
# Just in case, we enable ufw here. If it's already enabled, this is a no-op.
sudo systemctl enable ufw
