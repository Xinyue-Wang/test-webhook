# simple-kubernetes-webhook

Function: add `foo:bar=PreferNoSchedule` taint on new node at init

🚀 Deploying webhook pod

kubectl apply -f dev/manifests/cluster-config/


🚀 Deploying mutating webhook config

kubectl apply -f dev/manifests/webhook/
