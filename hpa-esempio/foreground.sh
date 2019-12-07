#! /bin/bash
echo "install microk8s kubernetes"
snap install microk8s --classic
echo "create alias kubectl"
snap alias microk8s.kubectl kubectl
echo "configure microk8s"
microk8s.enable metric
