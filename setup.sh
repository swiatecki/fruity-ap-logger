sudo apt-get install screen

sudo cp fruity-ap-logger-startup.sh /etc/init.d/
sudo chmod +x /etc/init.d/fruity-ap-logger-startup.sh
sudo update-rc.d fruity-ap-logger-startup.sh defaults

echo "Updating rc.local - hang tight"

# Update rc.local
sudo sed -i -e '$i sudo /bin/bash /home/pi/Fruity-AP-logger/fruity-ap-logger.sh' /etc/rc.local

echo "Now reboot please.."
