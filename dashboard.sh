#!/bin/bash

echo Proxying to Kube Admin Dashboard at http://localhost:8001/ui
kubectl proxy &

open http://localhost:8001/ui
