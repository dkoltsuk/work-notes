## Install argoCD 

`kubectl create namespace argocd`
`kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml`

## Patch svc
 `kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'`


## Get password

`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo`