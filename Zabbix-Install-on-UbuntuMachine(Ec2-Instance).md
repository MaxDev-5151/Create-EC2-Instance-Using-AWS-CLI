# Zabbix Install on Ubuntu Machine(EC2 Instance)

**1. Update the machine**

`sudo apt-get update -y`

**2. Install apache server and php**

`sudo apt-get install apache2 libapache2-mod-php -y`

**3. Install mysql server**

`sudo apt-get install mysql-server -y`

**4. Install pap modules**

`sudo apt-get install php php-mbstring php-xml php-bcmath php-ldap php-mysql -y`

**5. Download the Zabbix repositories**

`wget hhtps://repo.zabbix/5.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.0-1+bionic_all.deb`

**6. Run the Zabbix repositories**

`sudo dpkg -i zabbix-release_5.0-1+bionic_all.deb`

**7. Upload the machine**

`sudo apt upload -y`

**8. Install Zabbix server, agent and the required modules**

`sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent -y`

**9. Connect to the database**

`sudo mysql --default-file=/etc/mysql/debian.cnf`

**10. Create a database "zabbix"**

`Create database zabbix character set utf8 collate utf8_bin;`

**11. Create a DB user "zabbix"**

`create user zabbix@localhost identified by 'zabbix`;

**12. Grant permissions to the user "zabbix"**

`grant all privileges on zabbix. * to zabbix@localhost;`

**13. Exit from the DB**

quit;

**14. Copy the schema to the DB**

`sudo zcat /usr/share/doc/zabbix-server-mysql*/create.sql.gz | mysql -uzabbix -p zabbix`

**15. Setup the DB password in the server configuration file**

`sudo v1 /etc/zabbix_server.conf ---- Set the "DBPassword=zabbix"`

**16. Setup the time zone in the apache configuration file**

`sudo vi /etc/zabbix/apache.conf ---- Set php_value`

**17. Restart the server and the agent**

`sudo systemctl restart zabbix-server zabbix-agent apache2`

**18. Enable the server and the agent**

`sudo systemctl enable zabbix-server zabbix-agent apache2`

**19. Allow the rules if  you are using Cloud (in my case AWS).**

`Edit the security group and add 10050 and 10051 rules`

**20. Access the application using the Ip address**

`Access the app ---ip-address/zabbix`


















