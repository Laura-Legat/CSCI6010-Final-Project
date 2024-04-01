# CSCI6010-Final-Project
Code for final project of CSCI6010 - Big Data

# How to run this project

- Pre-requisites: Docker desktop installed

1. With Docker desktop open, type `docker-compose up -d` in the command line from the root folder of this project
2. Wait a minute, then navigate to http://localhost:5050/
3. Login on pgadmin with PG_DEFAULT_EMAIL and PG_DEFAULT_PASSWORD from docker-compose.yml file
4. Click on Servers -> Register -> General Tab; Name: bigdata, Connection tab; Host name/address: postgres, Username: bigdata, Password: tImPgDBfBDc!32#
5. Run db_conn.py and observe if tables and contents were created in "bigdata" database
