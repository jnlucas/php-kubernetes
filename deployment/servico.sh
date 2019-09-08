#!/bin/bash

kubectl delete -f deployment-noticia.yml
kubectl delete -f servico-noticia-noticia.yml

kubectl create -f deployment-noticia.yml
kubectl create -f servico-noticia-noticia.yml
