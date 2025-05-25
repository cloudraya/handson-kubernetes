export KUBECONFIG=./kubeconfig.conf
kubectl get nodes
kubectl get namespaces
kubectl create clusterrolebinding dashboard-admin-sa --clusterrole=cluster-admin --serviceaccount=default:dashboard-admin-sa

kubectl apply -f dashboard-token.yaml
kubectl -n default get secret dashboard-admin-sa-token -o go-template="{{.data.token | base64decode}}" && printf "\n"
kubectl port-forward -n kubernetes-dashboard svc/kubernetes-dashboard 8443:443