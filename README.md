The mission of Trainly.io is to be the App Store of training: organizations collaborate with faculty to create and securely post materials (for free!); students find, enroll in, and complete useful courses (with the ability to certify completion to employers); and Trainly.io only charges 30% of any course-enrollment fees!


The website was build using nodejs as the backend talking to a MariaDB database.
The application frontend was developed using angularjs and bootstrap.


REQUIRED SOFTWARES:
    Maria DB
    /* developed and tested using version 10.1.25*/

    nodejs and npm
    /* can be downloaded from https://nodejs.org/en/download/ */
    /* developed and tested using Version: 8.9.3 (includes npm 5.5.1). */



SYSTEM BUILD:

Clone git repo:
```
    git clone https://github.com/anju-james/DBMS-Trainly.git
```

Change to project folder:
```
    cd DBMS-Trainly/DBMS/
```

Run SQL:  
```
      sql/DDL.sql           /*will create the schema*/
      sql/DML.sql           /*populate data*/
      sql/USER_CREATE.sql   /* create database user */
```

Download node packages:
```
      npm install
```

Start node server:      
```
      npm start
```

Browse URL from browser:
```
      http://localhost:8800/#!/login
```

Test user credentials:
A test user who is both admin & faculty
```
username:alisha@slusarski.com
password:admin
```      

SYSTEM BUILD DEMO:

<img src="https://github.com/BigTony666/Trainly.io/blob/master/doc/systembuild.gif" width="800" height="400" />
