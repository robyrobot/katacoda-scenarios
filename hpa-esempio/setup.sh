#!/bin/bash
stty -echo && echo "Kubernetes installing ..."
snap install microk8s --classic
snap alias microk8s.kubectl kubectl
microk8s.enable metrics-server dns
touch /tmp/setup_done
echo "Done!" && stty echo 

