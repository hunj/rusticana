gcloud config set compute/zone us-east4-a
gcloud container clusters create rusticana
gcloud compute disks create --size 64GB rusticana-disk
gcloud config list