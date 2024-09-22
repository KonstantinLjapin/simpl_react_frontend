#!/bin/bash
# need chmod +
sudo docker compose up;
sudo docker stop $(sudo docker ps -a -q);
sudo docker rm $(sudo docker ps -a -q);
sudo docker rmi $(sudo docker images --format="{{.Repository}} {{.ID}}" |
                  grep "^backend_for_bike_rental_service_picasso_diagnostic-web" | cut -d' ' -f2);
sudo docker network rm backend_for_bike_rental_service_picasso_diagnostic_backend;
sudo rm -r dump/;