sudo apt-get update -y
sudo apt-get install wget curl gnupg2 apt-transport-https software-properties-common -y
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update -y
sudo apt-get install grafana -y
grafana-server -v
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
systemctl status grafana-server
ss -antpl | grep 3000
sudo apt-get install nginx -y
sudo nano /etc/nginx/conf.d/grafana.conf
