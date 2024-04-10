# Create DataBase Using RDS(Relational Database Service) Connect to EC2 Instance

**1. On the Console Home page, select the `RDS` service**

![Image](./Images/RDS/1a.png)

**2. In the navigation pane, select `Database` and then select `Create database`**

![Image](./Images/RDS/2a.png)

**3. We Got one Suggested window click on `Close` button**

![Image](./Images/RDS/3.png)

**4. In Create database page select Engine Options:`My SQL`, Templates: `Free tire`, Enter meaningful name in DB instance identifier, Enter Password, Availability Zone: `us-east-1a`, Database authentications option: `Password authentication` and few default fields same and click on `Create database`**

![Image](./Images/RDS/1.png)

- In Connectivity & security tab `Endpoint` and `Port` are important things

![Image](./Images/RDS/2.png)

**5. database is successfully created now status of database is `Backing-up` after few min status change as `Available`, After that click on `DB identifier`**

![Image](./Images/RDS/5.png)
![Image](./Images/RDS/6.png)

**6. Create EC2 instance and ssh it**

![Image](./Images/RDS/7.png)
![Image](./Images/RDS/8.png)

**7. After that run some commands**
- for update: `sudo apt-get update`
- for install mysql: `sudo apt-get install mysql-client`
- login mysql: `mysql -u admin -p` (But it show Error because my sql port is 3306, but we not enable port 3306 in security group thats why its shows error )

![Image](./Images/RDS/9.png)

**8. Go to security group page> `Inbound rules` tab and click on `Edit Inbound rule`**

![Image](./Images/RDS/10.png)

**9. In Edit inbound rules page**
- Add rule: MYSQL/Aurora: 3306: Anywhere(IPv4)
- Add rule: MYSQL/Aurora: 3306: Anywhere(IPv6)
- after that click on `Save rule`

![Image](./Images/RDS/11.png)
![Image](./Images/RDS/12.png)

**10. Go to terminal and type command `mysql -h nehaldb-01-mysql.cngc6kk0s2u3.us-east-1.rds.amazonaws.com -u admin -p`**
- In above command: `nehaldb-01-mysql.cngc6kk0s2u3.us-east-1.rds.amazonaws.com` is host url
- After that enter password, now we connect with database

![Image](./Images/RDS/13.png)

**11. Run some sql commands**
- `show databases;`
- `CREATE database testing;`


![Image](./Images/RDS/14.png)

- `show databases;` here we can see our database created(testing)

![Image](./Images/RDS/15.png)

**12. For Exit from mysql type: `exit`**

![Image](./Images/RDS/16.png)

