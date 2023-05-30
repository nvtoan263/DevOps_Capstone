# DevOps_Capstone - Epoch Time Converter
 Amazon Cloud | CICD | Kubernetes | Auto Scaling
# Project Overview
This project a webapp which support to convert epoch time to human readable time to AWS Cloud

# Project Status
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nvtoan263/DevOps_Capstone/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nvtoan263/DevOps_Capstone/tree/main)

# Run app locally
- Python3 is install in local machine
- Docker account
- Clone this project to local machine:
```bash
git clone https://github.com/nvtoan263/DevOps_Capstone.git
```
- Setup environment:
```bash
python3 -m pip install --user virtualenv
python3 -m venv ~/.testenv
source ~/.testenv/bin/activate
```
- Install dependencies:
```bash
make install
```
## Run from python
```bash
python backend.py
```
test it out from browser: <code>htt://127.0.0.1:80</code>

## Run by docker
- Intall docker to your 
```bash
./general_script/run_docker.sh
```
test it out from browser: <code>htt://127.0.0.1:8000</code>
- Push built image to dockerhub (optional)
```bash
./general_script/push_docker.sh
```
# Deploy to AWS Cloud from local machine
- Setup [awscli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- Install [eksctl](https://eksctl.io/introduction/#installation)
- Install [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- Create cluser
```bash
./eks-scripts/create-cluster.sh
```
- Configure kubectl to aws
```bash
aws eks update-kubeconfig --region us-east-1 --name toannv15-devops-capstone
```
- Run deployment with correct ${IMAGE_TAG}
```bash
kubectl apply -f ./k8s-scripts/deployment_template.yaml
```
- Create loadbalancer & get status
```bash
kubectl apply -f ./k8s-scripts/loadbalancer_services.yaml
kubectl get services
```
# Reference running site (temporary)
http://a47fd374d8f784360996474677274f0e-751176890.us-east-1.elb.amazonaws.com

