#!/bin/bash

# get name of influxdb pod
influxdb=`kubectl get pods -o json -l k8s-app=influxdb --all-namespaces | jq -r '.items[0].metadata.name'`

# get name of grafana pod
grafana=`kubectl get pods -o json -l k8s-app=grafana --all-namespaces | jq -r '.items[0].metadata.name'`

# Port forward to influxdb
kubectl port-forward $influxdb --namespace=kube-system 8086:8086 &

# Port forward to grafana
kubectl port-forward $grafana --namespace=kube-system 3000:3000 &

# If on Linux switch to xdg-open
open http://localhost:3000