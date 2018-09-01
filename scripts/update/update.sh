#!/bin/bash

# Intro Screen
echo "#################################"
echo "#   up.sh by Stefano Vazzoler   #"
echo "#################################"

# Update
sudo apt -y update
echo "#################################"

# Upgrade
sudo apt -y upgrade
echo "#################################"

# Upgrade 2 (http://manpages.ubuntu.com/manpages/bionic/man8/apt.8.html)
sudo apt -y full-upgrade
echo "#################################"

# Removed packages that are no longer required
sudo apt -y autoremove
echo "#################################"

# Clean the apt cache
sudo apt -y autoclean
echo "#################################"