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

## Database setup
to connect to the database (now i use RDBMS MySQL), the 1st step is 

```bash
Edit your .env file to include the correct DB credentials
```
then Run the following command to run startup migrations

```bash
adonis migration:run
```
