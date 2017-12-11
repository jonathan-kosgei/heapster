# Monitoring

## Getting Started

Download Helm https://github.com/kubernetes/helm/releases

Untar the archive

Move it to /usr/local/bin/helm

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

## Delete Stack

```
helm del --purge monitoring
```