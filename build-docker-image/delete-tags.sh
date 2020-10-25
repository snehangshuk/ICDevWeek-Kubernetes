#!/bin/bash

USERNAME="snehangshuk"
PASSWORD="SomU052011@@"
ORGANIZATION="snehangshuk"
IMAGE1="basic-flask"
IMAGE2="multicontainer-app"
TAG="v1"

login_data() {
cat <<EOF
{
  "username": "$USERNAME",
  "password": "$PASSWORD"
}
EOF
}

TOKEN=`curl -s -H "Content-Type: application/json" -X POST -d "$(login_data)" "https://hub.docker.com/v2/users/login/" | jq -r .token`

curl "https://hub.docker.com/v2/repositories/${ORGANIZATION}/${IMAGE1}/tags/${TAG}/" \
-X DELETE \
-H "Authorization: JWT ${TOKEN}"

curl "https://hub.docker.com/v2/repositories/${ORGANIZATION}/${IMAGE2}/tags/${TAG}/" \
-X DELETE \
-H "Authorization: JWT ${TOKEN}"
