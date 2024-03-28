# Creating S3 Bucket Using AWS CLI 
- **Use-case 1. Upload/Transfer file from local machine to S3 Bucket**

- **Use-case 2. Download files from s3 bucket to particular path of local machine**

**1. Open CMD on particular existing folder/file-path  which file upload to s3 bucket**

![Image](./Images/S3Bucket(AWS-CLI)/1.png)

**2. For Creating S3 Bucket type: `aws s3 mb s3://max-bucket-5151 --region us-east-1`**

- aws: Amazon Web Services
- s3 : Service Name
- mb : Make Bucket(command)
- s3://max-bucket-5151: argument (Bucket Name)
- region: AWS region where we want to create the bucket

![Image](./Images/S3Bucket(AWS-CLI)/2.png)

**3. Go to AWS console and search and click on S3 and we can our created bucket in Buckets page**

![Image](./Images/S3Bucket(AWS-CLI)/3.png)
![Image](./Images/S3Bucket(AWS-CLI)/4.png)

**4. For uploading local machine files to s3 bucket**
- Go to cmd to check files present in particular path for that type: `dir`
- After that type: `aws s3 sync . s3://max-bucket-5151`

![Image](./Images/S3Bucket(AWS-CLI)/5.png)
![Image](./Images/S3Bucket(AWS-CLI)/6.png)

**5. for checking uploaded file: Go to Buckets page and click on bucket name and see the uploaded files**

![Image](./Images/S3Bucket(AWS-CLI)/8.png)
![Image](./Images/S3Bucket(AWS-CLI)/9.png)

**6. After that For Download files from s3 bucket to particular path of local machine**

- Delete All existing files present in folder(its not mandatory),I am going to delete files because whatever files uploaded in s3 bucket same files I try to download in same folder

![Image](./Images/S3Bucket(AWS-CLI)/10.png)

**7. For Downloading files type: `aws s3 sync s3://max-bucket-5151 .`**

![Image](./Images/S3Bucket(AWS-CLI)/11.png)

![Image](./Images/S3Bucket(AWS-CLI)/7.png)

**8. For Removing Bucket type: `aws s3 rb s3://max-bucket-5151 --force`**

![Image](./Images/S3Bucket(AWS-CLI)/12a.png)
