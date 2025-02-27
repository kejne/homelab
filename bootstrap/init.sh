#! /bin/bash

kind delete cluster
systemd-run --scope --user kind create cluster --config=kind-config.yaml
cilium install --version 1.17.1

helm repo add argo https://argoproj.github.io/argo-helm
helm dependency build ./charts/01
helm dependency build ./charts/02

helm install first ./charts/01 -n argocd --create-namespace
helm install second ./charts/02 -n argocd

