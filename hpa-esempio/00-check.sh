microk8s.status --wait-ready | grep -i enabled > /tmp/enabled && \
cat /tmp/enabled | grep dns && \
cat /tmp/enabled | grep metrics-server