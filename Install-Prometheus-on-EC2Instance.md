# Install Prometheus on EC2 Instance

**1. Create one EC2 Instance**

![Image](./Images/Prometheus/1.png)

**2. SSH it**

![Image](./Images/Prometheus/2.png)

**3. Run below commands**

- Make dir: `mkdir prometheus`

- Go to dir: `cd prometheus`

![Image](./Images/Prometheus/3.png)

- For Download Prometheus: `wget https://github.com/prometheus/prometheus/releases/download/v2.45.1/prometheus-2.45.1.linux-amd64.tar.gz`

![Image](./Images/Prometheus/4.png)

- For Extract: `tar -xvzf prometheus-2.45.1.linux-amd64.tar.gz`

![Image](./Images/Prometheus/5.png)
- `cd prometheus-2.45.1.linux-amd64`

- `ls -al`(Here `prometheus`: Executable file and `prometheus.yml`:Config file)

![Image](./Images/Prometheus/7.png)

- `./prometheus` (Here we can see the address and port:9090)

![Image](./Images/Prometheus/8.png)

**4. Go Instances, choose security tab and click on Security group**

![Image](./Images/Prometheus/9.png)

**5. Click on `Edit inbound rules`**

![Image](./Images/Prometheus/10.png)

**6. Add rule: port:9090 and Source: anywhere**

![Image](./Images/Prometheus/11.png)

**7. Copy the public ip**

![Image](./Images/Prometheus/12.png)

**8. Open browser put public ip and also add port like(54.173.69.114:9090)**

- Prometheus open successfully

![Image](./Images/Prometheus/13.png)

**9. I Just try to open one graph on Prometheus**

![Image](./Images/Prometheus/14.png)