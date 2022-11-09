# Cluster commands 
## Runcurl in cluster 
`kubectl run curl --image=radial/busyboxplus:curl -i --tty`

## Kibana password 
`kubectl get secret elasticsearch-es-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode; echo`

