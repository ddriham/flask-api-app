#!/bin/bash


if command -v docker &> /dev/null; then
    sudo systemctl strat docker
    sudo systemctl enable docker
else
    sudo yum update
    sudo yum install docker -y
    sudo yum install -y docker-ce docker-ce-cli containerd.io
    sudo usermod -aG docker $USER
    sudo systemctl enable docker
    sudo systemctl start docker
fi
