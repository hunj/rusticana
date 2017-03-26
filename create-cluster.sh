gcloud config set compute/zone us-central1-b
gcloud container clusters create rust-cluster
gcloud compute disks create --size 50GB rust-server-disk
gcloud config list