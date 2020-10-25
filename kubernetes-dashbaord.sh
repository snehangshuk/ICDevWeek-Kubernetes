
#To start the Kubernetes dashboard on a cluster, use the az aks browse command. This command requires the installation of the kube-dashboard addon on the cluster, which is included by default on clusters running any version older than Kubernetes 1.18
az aks browse --resource-group myResourceGroup --name myAKSCluster

#Use the url:
#http://127.0.0.1:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy
#or
#http://127.0.0.1:8001

#Create service account to access K8 dashbaord
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard

#Get the secret of use as Token
kubectl get secrets -n kube-system
kubectl describe secrert kubernetes-dashboard-***some**token**:
