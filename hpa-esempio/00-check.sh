#!/bin/bash
microk8s.status --wait-ready | grep -i enabled > /tmp/enabled.txt
grep dns /tmp/enabled.txt && grep metrics-server /tmp/enabled.txt