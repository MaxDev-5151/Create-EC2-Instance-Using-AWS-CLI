# Cloud Watch Alarm

**1. Create one EC2 Instance** 

![Image](./Images/Clo/1.png)

**2. Search `Cloud Watch` in search bar and click on that**

![Image](./Images/Clo/2.png)

**3. When we land on our dashboard for cloud watch, Click on `Create alarm`**

![Image](./Images/Clo/3.png)

**4. Again click on `Create alarm`**

![Image](./Images/Clo/4.png)

**5. After that click on `Select metrics`**

![Image](./Images/Clo/5.png)

**6. Click on `EC2` and then click on `Per-Instance Metrics`**

![Image](./Images/Clo/6.png)
![Image](./Images/Clo/7.png)

**7. Search our EC2 instance and select `Source: CUP Utilization` for alarm**

![Image](./Images/Clo/8.png)
![Image](./Images/Clo/9.png)

**8. In Conditions select `Greater/Equal` option and give threshold value(0.164) and click on Next button**

![Image](./Images/Clo/10.png)

**9. In Configure Actions: Select `Create new topic` and then give topic name, put our email id where we want this email to arrive and then click on `create topic`**
- In alarm- It means that whenever the value moves above the threshold that just set will generate an alarm for us
- SNS Topic - It is `Simple Notification Service` 

![Image](./Images/Clo/11.png)

**10. default Auto Scaling, EC2 action and System Manager action and click on `Next` button**

![Image](./Images/Clo/12.png)

**11. Enter Alarm Name and click on Next button**

![Image](./Images/Clo/13.png)

**12. Now we can see that maximum cpu utilization and click on `Create alarm`**

![Image](./Images/Clo/14.png)
![Image](./Images/Clo/15.png)

**13. We can see Successfully created Ec2 Alarm for Utilization**

![Image](./Images/Clo/16.png)

**14. We have Received an email for AWS notification, Confirm my Subscription so that we receive all of these emails**

![Image](./Images/Clo/17.png)

**15. Subscription is now confirmed**

![Image](./Images/Clo/18.png)

**16. Go to Alarm page and click on alarm name**

![Image](./Images/Clo/19.png)

**17. Go to Alarm notification, here we can see we set the threshold 0.164 but it reached to 0.526 for some reasons**   

![Image](./Images/Clo/24.png)

**18. And same way it triggered an alarm and email notification for this particular thing in that we can it gives all of the information related to what the event occurred**

![Image](./Images/Clo/22.png)
![Image](./Images/Clo/23.png)