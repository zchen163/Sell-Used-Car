# Sell Used Car System Design and Implementation

## Getting Started
These instructions the GT_Online project up and running on your local machine for development and testing purposes. 
Updated GT_Online Source files to PHP version 7
![ScreenShot](https://github.gatech.edu/gt-omscs-dbscd-spr17/6400Spring17_Phase3_Sample_Submission/blob/master/img/gt_online_php_v7.png)

## Installation
Install Bitnami *AMP stack: [https://bitnami.com/stacks/infrastructure](https://bitnami.com/stacks/infrastructure)

Unzip the Phase3_Sample_Submission.zip folder into: C:\Bitnami\wampstack-7.0.11-0\apache2\htdocs\
![ScreenShot](https://github.gatech.edu/gt-omscs-dbscd-spr17/6400Spring17_Phase3_Sample_Submission/blob/master/img/gt_online_wamp_v7.png)

Now login as ‘root’ to phpMyAdmin: [http://127.0.0.1:80/phpmyadmin/](http://127.0.0.1:80/phpmyadmin/)

Now add a new username: "gatechUser" with password “gatech123” using phpMyAdmin 
(Select localhost and Data only privileges)
![ScreenShot](https://github.gatech.edu/gt-omscs-dbscd-spr17/6400Spring17_Phase3_Sample_Submission/blob/master/img/add_sql_user.png)

## Configuring the application

```
define('DB_HOST', "localhost");
define('DB_PORT', "3306");
define('DB_USER', "gatechUser");
define('DB_PASS', "gatech123");
define('DB_SCHEMA', "cs6400_fa17_team001");
```

Then run the SQL script through phpMyAdmin --> Import to create the DB you need. 
![ScreenShot](https://github.gatech.edu/gt-omscs-dbscd-spr17/6400Spring17_Phase3_Sample_Submission/blob/master/img/import_sql.png)

Then restart your Apache server: (here alternative http port 8080 is used)
Now launch the URL: 
[http://localhost:8080/Phase3_Sample_Submission/login.php](http://localhost:8080/Phase3_Sample_Submission/login.php)
 
Lastly, login with username and password below (prefilled): 
```
username: michael@bluthco.com
password: michael123
```

Note: by default, the queries are shown to the user as a learning tool.  To turn this off, flip the boolean flag on lib/common.php for the showQueries = false;

If needed, read the server logs:
Bitnami *AMP Stack Manager Tool --> Manager Server --> Configure --> Open Error Log:

![ScreenShot](https://github.gatech.edu/gt-omscs-dbscd-spr17/6400Spring17_Phase3_Sample_Submission/blob/master/img/error_log.png)

### Congratulations!
You've successfully set up the GT_Online project on your local development machine!

## Authors
* __TeamMember1Name__  email: [uid1@gatech.edu](mailto:uid1@gatech.edu)
* __TeamMember2Name__  email: [uid2@gatech.edu](mailto:uid2@gatech.edu)
* __TeamMember3Name__  email: [uid3@gatech.edu](mailto:uid3@gatech.edu)
* __TeamMember4Name__  email: [uid4@gatech.edu](uid4@gatech.edu)

