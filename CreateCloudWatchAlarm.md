# Cloud Watch Alarm

**1. Create one EC2 Instance** 

![Image](./Images/Clo/1.png)

**2. Search `Cloud Watch` in search bar and click on that**

![Image](./Images/Clo/2.png)

**3. Click on `Create alarm`**

![Image](./Images/Clo/3.png)

**4. Again click on `Create alarm`**

![Image](./Images/Clo/4.png)

**5. After that click on `Select metrics`**

![Image](./Images/Clo/5.png)

**6. Click on `EC2` and then click on `Per-Instance Metrics`**

![Image](./Images/Clo/6.png)
![Image](./Images/Clo/7.png)

**7. Search our EC2 instance and select `Source: CUP Utilization`**

![Image](./Images/Clo/8.png)
![Image](./Images/Clo/9.png)

**8. set Conditions and click on Next button**

![Image](./Images/Clo/10.png)

**9. In Configure Actions: Select `Create new topic` and then give topic name, put our email id where we can receive the notification and then click on `create topic`**

![Image](./Images/Clo/11.png)

**10. default Auto Scaling, EC2 action and System Manager action and click on `Next` button**

![Image](./Images/Clo/12.png)

**11. Enter Alarm Name and click on Next button**

![Image](./Images/Clo/13.png)

**12. check metrics and click on `Create alarm`**

![Image](./Images/Clo/14.png)
![Image](./Images/Clo/15.png)