# Creating EC2 Instance Using AWS CLI

**1. Log in to AWS console and search and click 'AMI'**

![Image](./Images/1.png)

**2. Then go to users page and then click on 'Create User'**

![Image](./Images/2.png)
![Image](./Images/3.png)

**3. Enter meaningful name for user and then click on Next**

![Image](./Images/4.png)

**4. In Set permissions page select user group and click on Next**

![Image](./Images/5.png)

**5. Then click on user name**

![Image](./Images/6.png)

**6. Go to security Credentials tab and click on 'Create access key' button for creating Access keys**

![Image](./Images/7.png)

**7. Select 'Command Line Interface(CLI) and click on Next button**

![Image](./Images/8.png)

**8. without filling anything click on 'Create access key'**

![Image](./Images/9.png)

**9. Then download the .csv file and click on Done button**

![Image](./Images/10.png)

- Download AWS CLI

**10. Browse 'Install or update to the latest version of the AWS CLI' and click on download link**

![Image](./Images/11.png)

**11. Double click on download file and then next..and then click on install**

![Image](./Images/12.png)
![Image](./Images/13.png)
![Image](./Images/14.png)
![Image](./Images/15.png)
![Image](./Images/16.png)

**12. After that open CMD and type: `aws configure`**
- Enter AWS Access Key ID
- Enter AWS Secret Access Key

![Image](./Images/17.png)

**13. For Checking the list of running Instances type: `aws ec2 describe-instance --region us-east-1`**

![Image](./Images/18.png)

**14. For Creating EC2 instance copy the AMI ID**

![Image](./Images/19.png)

**15. For Creating EC2 instance type: `aws ec2 run-instances --image-id=ami-080e1f13689e07408 --instance-type=t2.micro --region us-east-1` and enter**

![Image](./Images/20.png)

**16. Checking EC2 instance is create or not for that go to instances page and refresh it, then we can see the created Instance**

![Image](./Images/21.png)

