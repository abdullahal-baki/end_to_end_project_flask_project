# My Sample Project

This is a modern Python project template for learning/testing industry practices.


## Docker Run Command

`sudo docker pull abdullahalbaki/flask-test-app:latest`

`sudo docker run -d -p 5000:5000 --name flask-test-app abdullahalbaki/flask-test-app:latest`

`sudo docker stop flask-test-app`

`sudo docker rm flask-test-app`

`sudo docker ps`


### Run Docker WatchTower to CD
`sudo docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --interval 30 flask-test-app`