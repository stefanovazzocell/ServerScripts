#!/bin/bash

# Intro Screen
echo "##########################" > /log/update_report
echo "#                        #" >> /log/update_report
echo "# > Auto Update          #" >> /log/update_report
echo "# @hourly                #" >> /log/update_report
echo "# by Stefano Vazzoler    #" >> /log/update_report
echo "#                        #" >> /log/update_report
echo "##########################" >> /log/update_report

# Update
echo "> sudo apt-get -y update" >> /log/update_report
date "+%H:%M:%S   %d/%m/%y" >> /log/update_report
echo "##########################" >> /log/update_report
sudo apt -y update 2>&1 | tee -a /log/update_report
echo "##########################" >> /log/update_report

# Upgrade
echo "> sudo apt-get -y upgrade" >> /log/update_report
date "+%H:%M:%S   %d/%m/%y" >> /log/update_report
echo "##########################" >> /log/update_report
sudo apt -y upgrade 2>&1 | tee -a /log/update_report
echo "##########################" >> /log/update_report

# Auto Remove
echo "> sudo apt-get -y autoremove" >> /log/update_report
date "+%H:%M:%S   %d/%m/%y" >> /log/update_report
echo "##########################" >> /log/update_report
sudo apt -y autoremove 2>&1 | tee -a /log/update_report
echo "##########################" >> /log/update_report

# Clean
echo "> sudo apt-get -y autoclean" >> /log/update_report
date "+%H:%M:%S   %d/%m/%y" >> /log/update_report
echo "##########################" >> /log/update_report
sudo apt -y autoclean 2>&1 | tee -a /log/update_report
echo "##########################" >> /log/update_report

# End Screen
date "+%H:%M:%S   %d/%m/%y" >> /log/update_report
echo "##########################" >> /log/update_report
echo "#                        #" >> /log/update_report
echo "#          >END          #" >> /log/update_report
echo "#                        #" >> /log/update_report
echo "##########################" >> /log/update_report