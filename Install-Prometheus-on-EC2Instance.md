# Install Prometheus on EC2 Instance

**1. Create one EC2 Instance**

![Image](./images/Prometheus/1.png)

**2. SSH it**

![Image](./images/Prometheus/2.png)

**3. Run below commands**

- Make dir: `mkdir prometheus`

- Go to dir: `cd prometheus`

![Image](./images/Prometheus/3.png)

- For Download Prometheus: `wget https://github.com/prometheus/prometheus/releases/download/v2.45.1/prometheus-2.45.1.linux-amd64.tar.gz`

![Image](./images/Prometheus/4.png)

- For Extract: `tar -xvzf prometheus-2.45.1.linux-amd64.tar.gz`

![Image](./images/Prometheus/5.png)
- `cd prometheus-2.45.1.linux-amd64`

- `ls -al`(Here `prometheus`: Executable file and `prometheus.yml`:Config file)

![Image](./images/Prometheus/7.png)

- `./prometheus` (Here we can see the address and port:9090)

![Image](./images/Prometheus/8.png)

**4. Go Instances, choose security tab and click on Security group**

![Image](./images/Prometheus/9.png)

**5. Click on `Edit inbound rules`**

![Image](./images/Prometheus/10.png)

**6. Add rule: port:9090 and Source: anywhere**

![Image](./images/Prometheus/11.png)

**7. Copy the public ip**

![Image](./images/Prometheus/12.png)

**8. Open browser put public ip and also add port like(54.173.69.114:9090)**

- Prometheus open successfully

![Image](./images/Prometheus/13.png)

**9. I Just try to open one graph on Prometheus**

![Image](./images/Prometheus/14.png)