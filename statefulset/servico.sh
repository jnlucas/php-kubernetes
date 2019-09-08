#!/bin/bash

kubectl delete -f statefulset-sistema.yml
kubectl delete -f servico-statefulset.yml
kubectl delete -f permissao.yml

kubectl create -f permissao.yml
kubectl create -f statefulset-sistema.yml
kubectl create -f servico-statefulset.yml

minikube service servico-sistema-statefulset --url
