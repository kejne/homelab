#! /bin/bash

helm dependency build ./01
helm dependency build ./02

helm install first ./01
helm install second ./02

