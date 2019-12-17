#!/bin/bash
microk8s.status --wait-ready | grep -i enabled > .enabled.txt
grep dns .enabled.txt && grep metrics-server .enabled.txt