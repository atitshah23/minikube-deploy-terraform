#!/bin/bash
sudo apt-get update
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo apt-get update && sudo apt-get install docker.io -y
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
sudo -s <<EOF
minikube start --vm-driver=none
sudo yes | cp -rf /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo chgrp -R $USER $HOME/.kube/config
sudo mv /root/.minikube $HOME/.minikube
sudo chown -R $USER $HOME/.minikube
sudo chgrp -R $USER $HOME/.minikube
export KUBECONFIG=$HOME/.kube/config/admin.conf
EOF
sleep 30s
kubectl apply -f https://raw.githubusercontent.com/atitshah23/kube-deploy/master/k8s/mediawiki-mysql-deploy.yml
kubectl apply -f https://raw.githubusercontent.com/atitshah23/kube-deploy/master/k8s/mediawiki-deploy.yml