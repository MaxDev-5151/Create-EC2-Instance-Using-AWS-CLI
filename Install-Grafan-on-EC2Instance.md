# Install Grafana on AWS EC2 Instance  

**1. Create one EC2 Instance**

![Image](./images/Grafana/1.png)

**2. SSH it**

![Image](./images/Grafana/2.png)

**3. Run below commands on terminal**

- For Update: `sudo apt-get update -y`

![Image](./images/Grafana/3.png)

- Install necessary packages: `sudo apt-get install wget curl gnupg2 apt-transport-https software-properties-common -y`

![Image](./images/Grafana/4.png)

- Add gpg key: `wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -`
- updo repo list of ubuntu: `echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list`

![Image](./images/Grafana/5.png)

- For refresh and update: `sudo apt-get update -y`

![Image](./images/Grafana/6.png)

- For Install Grafana: `sudo apt-get install grafana -y`

![Image](./images/Grafana/7.png)

- For checking Grafana version for successfully installation: `grafana-server -v`
- To Start grafana service: `sudo systemctl start grafana-server`
- Add auto start grafana: `sudo systemctl enable grafana-server`
- To Check grafana service status: `systemctl status grafana-server`

![Image](./images/Grafana/8.png)

- To Check grafana running port: `ss -antpl | grep 3000`
- For Install Nginx to add reverse proxy: `sudo apt-get install nginx -y`

![Image](./images/Grafana/9.png)

- Add Nginx Config: `sudo nano /etc/nginx/conf.d/grafana.conf` (In that enter the code)

![Image](./images/Grafana/10.png)
![Image](./images/Grafana/11.png)
![Image](./images/Grafana/12.png)

- For test the Nginx: `sudo nginx -t`

![Image](./images/Grafana/13.png)

- To restart Nginx: `sudo systemctl restart nginx`

![Image](./images/Grafana/14.png)

**4. Now go to instance copy the `Public IPv4 DNS` and open in new tab**

![Image](./images/Grafana/15.png)
![Image](./images/Grafana/16.png)

**5. Enter default username and password(default username: admin and password: admin) and click on log in button**

![Image](./images/Grafana/17.png)

**6. Update your password**

![Image](./images/Grafana/18.png)

**7. try create new dashboard**

![Image](./images/Grafana/19.png)
![Image](./images/Grafana/20.png)
![Image](./images/Grafana/21.png)

**8. Home page of Grafana**

![Image](./images/Grafana/22.png)