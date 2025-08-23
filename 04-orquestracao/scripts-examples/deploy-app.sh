#!/bin/bash
# Deploy usando kubectl
kubectl apply -f ../minikube-examples/deployment.yaml
kubectl apply -f ../minikube-examples/service.yaml
kubectl apply -f ../minikube-examples/ingress.yaml

echo "Pods ativos:"
kubectl get pods
echo "Serviços:"
kubectl get svc
