# Upgrade Ubuntu On My EC2 Instance From One LTS Version To Another

-	Upgrade from LTS Ubuntu version 20.04 to the version 22.04

**1. Create EC2 Instance, Select AMI Ubuntu Server 20.04 and click on Launch Instance**

![Image](./images/Inplace-upgrade/1.png)

**2. Ssh the instance**

![Image](./images/Inplace-upgrade/2.png)
![Image](./images/Inplace-upgrade/3.png)
![Image](./images/Inplace-upgrade/4.png)

**3. To verify the current release, run the `hostname –all | grep OperatingSystem` command**

![Image](./images/Inplace-upgrade/5.png)

**4. To Install all the available updates for our LTS version, run the `sudo apt update`**

![Image](./images/Inplace-upgrade/6.png)

**5. After Update successfully run the `sudo apt upgrade` command**

![Image](./images/Inplace-upgrade/7.png)