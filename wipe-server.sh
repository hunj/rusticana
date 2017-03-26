kubectrl delete -f rust-server.yaml
kubectrl delete -f rust-service.yaml
gcloud container clusters delete rust-cluster
gcloud compute disks delete rust-server-disk