#! /bin/bash

helm repo add https://argoproj.github.io/argo-helm
helm dependency build ./charts/01
helm dependency build ./charts/02

helm install first ./charts/01 -n argocd --create-namespace
helm install second ./charts/02 -n argocd

