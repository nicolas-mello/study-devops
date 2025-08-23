#!/bin/bash
kubectl delete -f ../minikube-examples/ingress.yaml
kubectl delete -f ../minikube-examples/service.yaml
kubectl delete -f ../minikube-examples/deployment.yaml
echo "Aplicação removida."
