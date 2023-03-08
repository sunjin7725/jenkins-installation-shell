git clone https://github.com/scriptcamp/kubernetes-jenkins

if [ $# -eq 1 ]; then
    NAMESPACE=$1
else
    NAMESPACE="devops-tools"
fi

kubectl create namespace ${NAMESPACE}

kubectl apply -f kubernetes-jenkins/serviceAccount.yaml -n ${NAMESPACE}
kubectl apply -f kubernetes-jenkins/volume.yaml -n ${NAMESPACE}
kubectl apply -f kubernetes-jenkins/deployment.yaml -n ${NAMESPACE}
kubectl apply -f kubernetes-jenkins/service.yaml -n ${NAMESPACE}