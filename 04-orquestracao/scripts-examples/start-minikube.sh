#!/bin/bash
echo "Iniciando Minikube..."
minikube start --driver=docker
minikube status
