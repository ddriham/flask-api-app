#!/bin/bash

sudo docker pull ddriham/flask-api-app:latest
sudo docker run -itd --name flask-api-app -p 5000:5000 ddriham/flask-api-app:latest
