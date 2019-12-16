ENABLED=$(microk8s.status --wait-ready | grep -i enabled)
echo $ENABLED | grep -i dns && echo $ENABLED | grep -i metrics-server 