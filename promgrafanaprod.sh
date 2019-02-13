helm repo update;
sleep 5;
helm install --namespace monitoring --name prometheus stable/prometheus -f promethconf.yaml;
sleep 5;
kubectl create -f kubistiodash.yaml;
helm install --namespace production --name grafana stable/grafana --set adminUser=admin --set adminPassword=admin123 --set sidecar.dashboards.enabled=true --set sidecar.datasources.enabled=true
kubectl get pods -n monitoring
