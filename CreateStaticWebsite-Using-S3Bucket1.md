# Create or Host Static Website Using S3 Bucket

**1. Sign in to the AWS Management Console and open the Amazon S3**

![Image](./Images/Static-Website(S3)/1.png)

**2. Choose Create Bucket** 

![Image](./Images/Static-Website(S3)/2.png)

**3. Enter `Bucket Name`, Uncheck `Block all public access`, check `acknowledge` and accept the default settings, click on `Create bucket`**

![Image](./Images/Static-Website(S3)/3.png)

**4. After that Click on Bucket Name**

![Image](./Images/Static-Website(S3)/4.png)

**5. I Already Created 2 static (static website1.html and 404.html) upload the this document to our bucket**

![Image](./Images/Static-Website(S3)/5.png)
![Image](./Images/Static-Website(S3)/6.png)


**6. Click on Upload**

![Image](./Images/Static-Website(S3)/7.png)

**7. Choose our Bucket, After that choose Properties**

![Image](./Images/Static-Website(S3)/8.png)

**8. In same page under `Static website hosting`, choose `Edit`**

![Image](./Images/Static-Website(S3)/9.png)

**9. In Edit Static Website hosting page**
- Choose Use this bucket to host a website
- In Index document, enter the file name of the index document(The index document name is case sensitive and must exactly match the file name of the HTML index document that we plan to upload to our S3 bucket. When we configure a bucket for website hosting, we must specify an index document)
- After that choose `Save changes`

![Image](./Images/Static-Website(S3)/10.png)

**10. At the bottom of the page, under Static website hosting, we see the website endpoint for our bucket, note the Endpoint(The Endpoint is the Amazon S3 website endpoint for our bucket. After we finish configuring our bucket as a static website, we can use this endpoint to test our website)**

![Image](./Images/Static-Website(S3)/11.png)

**11. Copy the endpoint try to open in new tab, It shows 403 forbidden error message**

![Image](./Images/Static-Website(S3)/12.png)

**12. Go to Buckets and choose our bucket, select our object and click on `open` button: then it successfully open**
- But using endpoint its not open

![Image](./Images/Static-Website(S3)/13.png)
![Image](./Images/Static-Website(S3)/14.png)
![Image](./Images/Static-Website(S3)/15.png)

**13. Now again go buckets click on bucket name, In permission tab click on Bucket Policy Edit button**

![Image](./Images/Static-Website(S3)/16.png)

**14. After that click on `Policy generator`**

![Image](./Images/Static-Website(S3)/17.png)

**15. In AWS Policy Generator page**
- Select Type of Policy: S3 Bucket Policy
- Principal: *
- Actions: Get Object
- ARN: put ARN(ARN present in bucket policy)(step no.14)

-After that click on `Add Statement`
- And last click on `Generate Policy`

![Image](./Images/Static-Website(S3)/18.png)

**16. After click on `Generate Policy` Policy JSON Document is open copy the code and paste it in the `Bucket policy editor`**
- do one change put `/*` at the end of resource
- Click on `Save Changes`(A message appears indicating that the bucket policy has been successfully added)

![Image](./Images/Static-Website(S3)/19.png)
![Image](./Images/Static-Website(S3)/20.png)
![Image](./Images/Static-Website(S3)/21.png)

**17. After Save Changes Just reload the 403 error page, and we can see our static website is open successfully**

![Image](./Images/Static-Website(S3)/22.png)
![Image](./Images/Static-Website(S3)/23.png)

## For Invalid/wrong url (Instead of 404 Not Found we print `This page is not available`)

**18. Create an error document(404.html-this document show `This page is not available`message: which is I already uploaded in S3 bucket)**

**19. Check invalid url, Put anything after url: we got 404 Not Found error**

![Image](./Images/Static-Website(S3)/24.png)

**20. Under Bucket choose our bucket, choose Properties and at bottom of the page under Static website hosting choose `Edit`**

![Image](./Images/Static-Website(S3)/25.png)


**21. Enable static website hosting for our bucket, and enter the exact name of our error document(404.html) and click on `Save changes`**

![Image](./Images/Static-Website(S3)/26.png)

**22. Whenever we run invalid url then it shows `This page is not available` message**

![Image](./Images/Static-Website(S3)/27.png)