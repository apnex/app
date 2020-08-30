#!/bin/bash

### Type:NodePort + External Node IP 172.20.16.14
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/baremetal/deploy.yaml
kubectl -n ingress-nginx patch services ingress-nginx-controller -p '{"spec": {"externalIPs": ["172.20.16.14"]}}' --type merge

### Type:LoadBalancer
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud/deploy.yaml
