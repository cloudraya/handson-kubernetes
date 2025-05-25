
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

kubectl create namespace ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --set controller.kind=Deployment --set controller.service.type=LoadBalancer --set controller.ingressClassResource.name=nginx --set controller.ingressClass=nginx