# docker-restapi

Based on the image greyltc/lamp, this image sets up a container running a simple REST API in PHP.  


## REST API 

The REST API provides CRUD operations on a mysql database.  Resources are mapped into mysql tables.  This code is taken from https://www.leaseweb.com/labs/2015/10/creating-a-simple-rest-api-in-php/ 

*Warning* : This REST API is for prototyping only! It uses plain HTTP and does not support authentication nor any security feature! 

## Usage

### Running the container

docker run -p80:80 --name restapi -d vvandenschrieck/restapi:latest

### Testing the API 

In the database provided in the image, a single table is available : HUMIDITY(humidity_value:float, stream_value_time:bigint).  

To get all data recorded in this table (GET): navigate to http://<hostname>/api.php/HUMIDITY
To insert data using curl (POST) : curl -X POST -H "Content-Type:application/json" -d "{\"humidity_value\": \"40.82617\",\"stream_value_time\": \"1521578771526\"}" http://<hostname>/api.php/HUMIDITY/


### To personalize this example : 

Start by forking this Github repository, then : 

- Change database structure in setupMysqlDB.sh
- Improve REST API by editing the script www/api.php 
