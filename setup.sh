sudo apt-get update
sudo apt-get install screen -y
sudo apt-get install smokeping sendmail

# Setup Smokeping
sudo cp smokepingConfigs/General /etc/smokeping/config.d/
sudo cp smokepingConfigs/Database /etc/smokeping/config.d/
sudo cp smokepingConfigs/Targets /etc/smokeping/config.d/

#sudo cp fruity-ap-logger-startup.sh /etc/init.d/
#sudo chmod +x /etc/init.d/fruity-ap-logger-startup.sh
#sudo update-rc.d fruity-ap-logger-startup.sh defaults
echo "Bum bum"
echo "Updating rc.local - hang tight"

# Update rc.local
sudo sed -i -e '$i sudo /bin/bash /home/pi/fruity-AP-logger/fruity-ap-logger.sh' /etc/rc.local

echo "Now reboot please.."
