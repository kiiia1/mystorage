echo "Download ngrok"
wget https://raw.githubusercontent.com/RizzyDev81/mystorage/main/ngrok-region.sh && chmod +x ngrok-region.sh && ./ngrok-region.sh
echo Downloading File From RizFurr mystorage github
echo "===================================="
echo "Wait 2 Minutes"
echo "This is only for education" 
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Installing Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Installing RDP"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Starting RDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "====================================" 
echo "Don't close this tab RDP runs 12 hours" 
echo "===================================="
sleep 43210
