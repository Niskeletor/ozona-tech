#Comprobar namespace
kubectl get pods --all-namespaces | grep n8n
#Verificar Label
kubectl get pods -n <namespace> -l app=prometheus -o yaml
kubectl get pods -n default -l app=prometheus -o yaml
#verificar servicio
kubectl get svc -n <namespace> | grep prometheus
