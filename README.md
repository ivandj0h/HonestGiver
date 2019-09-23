# HonestGiver

Social Honest is a social assistance platform created to bridge between those who need financial assistance and those who want to help and HonestGiver is part of Social Honest, a mini-application that acts as an aid provider.
in this application, i use several featured as :

1. Bodyparser
2. Session
3. Authentication
4. Web security middleware
5. CORS
6. Edge template engine
7. Lucid ORM
8. Migrations and seeds

## Usage
in order to run this application the 1st step you have to Install dependencies directly by using

```bash
npm install
```

## Database setup with Migration
to connect to the database (now i use RDBMS MySQL), the 1st step is 

```bash
find and Edit the .env file with the correct of your DB credentials
```
please make sure you just create new database only and do not create table because it would be automate
generate when you run migration.

then Run the following command to run startup migrations

```bash
adonis migration:run
```

## Database setup without Migration
if you don't want to use migration, then you can copy or import the honestgiver.sql using phpmyadmin
or sqlyog or another tools.


## Run Server (nodemon suggested)
before you run this apps, please make sure you already have nodemon installed on your machine.
but if you don't have nodemon installed on your machine, please install it

```bash
npm install -g nodemon
```

and after that, to run this application just run :

```bash
nodemon server.js
```

## Important, before login
1. After migration the databases successed, you have to register yourself as a User before login.
2. if you can not login, you can open your database, find user table and change is_active from 0 to 1
3. to display the all data tables on dashboard, you can manually insert data into bantuan_givers table, bantuan table and user_askers table
4. if still face any error like the data not show up, please use import Database setup without Migration