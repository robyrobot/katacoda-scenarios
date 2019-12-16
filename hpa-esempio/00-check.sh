microk8s.status --wait-ready | grep -i enabled > /tmp/enabled
grep dns /tmp/enabled && grep metrics-server /tmp/enabled