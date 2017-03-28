kubectl delete -f rust-server.yaml
kubectl delete -f rust-service.yaml
gcloud container clusters delete rust-cluster
gcloud compute disks delete rust-server-disk