gcloud config set compute/zone us-west1-b
gcloud container clusters create rust-cluster
gcloud compute disks create --size 200GB rust-server-disk
gcloud config list