# Create And Attached EBS Volume Using AWS CLI

**1. Create one EC2 Instance**

![Image](./Images/EBS-AWS-CLI/1.png)

**2. Check volume Availability zone(us-east-1a)**

![Image](./Images/EBS-AWS-CLI/2.png)

**3. Then ssh the instances**

![Image](./Images/EBS-AWS-CLI/3a.png)
![Image](./Images/EBS-AWS-CLI/4.png)

**4.  After that open CMD and type: `aws configure`**

- Enter AWS Access Key ID

- Enter AWS Secret Access Key

![Image](./Images/EBS-AWS-CLI/5.png)

**5. For creating EBS Volume type: `aws ec2 create-volume --availability-zone us-east-1a --size 10`**

- `aws ec2 create-volume`: Specifies the service(EC2)
- `--availability-zone us-east-1a`: This defines the Availability zone
- `--size 10`: This sets the volume size in GiB


![Image](./Images/EBS-AWS-CLI/6.png)

**6. Go to aws volume page, we can see the Created Volume**

![Image](./Images/EBS-AWS-CLI/7.png)

**7. After that Attaching this volume to the instance for that purpose copy the instance ID**

**and then in cmd type: `aws ec2 attach-volume --volume-id vol-0ec0f159233f2b913 --instance-id i-042aa763d9c177df7 --device /dev/s
df`**

![Image](./Images/EBS-AWS-CLI/8.png)

**8. Go to instances page and check our volume is attached to the particular instance**

![Image](./Images/EBS-AWS-CLI/10.png)


**9. For checking whichever volumes attached to the particular instance then type: `aws ec2 describe-volumes`**

![Image](./Images/EBS-AWS-CLI/9.png)
