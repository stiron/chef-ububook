#!/bin/bash

# Update the system
apt-get update -q -y
apt-get upgrade -q -y

# Install git, curl, wget, vim
apt-get install -q -y git curl wget vim

# Install Chef Client
curl -L https://www.chef.io/chef/install.sh | sudo bash

# Clone the repo
cd /tmp
if [[ -d /var/tmp/chef-ububook ]]; then
  cd /var/tmp/chef-ububook
  git pull
else
  git clone https://github.com/stiron/chef-ububook.git
fi

# Run Chef
cd /var/tmp/chef-ububook
chef-solo -c config/solo.rb -j config/ububook.json
