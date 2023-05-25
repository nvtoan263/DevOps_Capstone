# DevOps_Capstone
 Amazon Cloud | CICD | Kubernetes | Auto Scaling

Cli: configure aws configure
Console: create|update vpc allow 8080
env: install eksctl
 wget https://github.com/weaveworks/eksctl/releases/download/v0.142.0/eksctl_Linux_amd64.tar.gz
 create config file for eks
 create cluster
config kubectl: aws eks update-kubeconfig --region region-code --name my-cluster
error: exec plugin: invalid apiVersion "client.authentication.k8s.io/v1alpha1"
kubectl create deploy webapp-epoch --image=toannguyenofficial/webapp_epoch:latest
