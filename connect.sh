export KUBECONFIG=./kubeconfig.conf
kubectl get nodes
kubectl get namespaces
kubectl -n kubernetes-dashboard create token kubernetes-dashboard

kubectl port-forward -n kubernetes-dashboard svc/kubernetes-dashboard 8443:443