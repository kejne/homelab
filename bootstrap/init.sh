#! /bin/bash

helm dependency build ./charts/01
helm dependency build ./charts/02

helm install first ./01
helm install second ./02

