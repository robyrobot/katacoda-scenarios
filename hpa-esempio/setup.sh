stty -echo
echo -n "Kubernetes installing ..."
{
    snap install microk8s --classic
    snap alias microk8s.kubectl kubectl
    microk8s.enable metrics-server dns
} &> /dev/null
echo "Done!" && stty echo 

