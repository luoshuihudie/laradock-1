##########################################################################
# File Name: create-database.sh
# Author: JY.Z
# mail: zhu798539218@163.com
# Created Time: 五  2/19 17:49:07 2021
#########################################################################
#!/bin/bash

# Check cli input
if [ -z ${1+x} ]
then
	DBNAME="data"
else
	DBNAME="$1"
fi

echo "Creating Influx database: $DBNAME..."

curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE $DBNAME"

