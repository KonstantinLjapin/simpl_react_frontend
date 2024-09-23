#!/bin/bash
# need chmod +
sudo docker compose up;
sudo docker stop $(sudo docker ps -a -q);
sudo docker rm $(sudo docker ps -a -q);
sudo docker rmi $(sudo docker images --format="{{.Repository}} {{.ID}}" |
                  grep "^simpl_react_frontend-web" | cut -d' ' -f2);
sudo docker network rm simpl_react_frontend_frontend;
sudo rm -r dump/;