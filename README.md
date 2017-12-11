# Monitoring

## Getting Started

1. Download Helm https://github.com/kubernetes/helm/releases 
2. Untar the archive
3. Move it to /usr/local/bin/helm

### Install Heapster

```
helm install --name monitoring -monitoring/
```

### Install Kubernetes Dashboard

```
helm install stable/kubernetes-dashboard
```

## Access Dashboards

```
./grafana.sh
```

## Delete Monitoring Stack

```
helm del --purge monitoring
```

## Creating Alerts

![Creating an Alert](create_alert.gif)
