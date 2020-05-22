# Rusticana

[![Banner for Rusticana! SOLO Only | Wiped @ 5/21 8PM EDT | Next wipe @ June](https://cdn.battlemetrics.com/b/standardVertical/6854678.png?foreground=%23EEEEEE&linkColor=%231185ec&lines=%23333333&background=%23222222&chart=players%3A24H&chartColor=%23FF0700&maxPlayersHeight=300)](https://www.battlemetrics.com/servers/rust/6854678)

**Rusticana** is a server name for my instance of dedicated server for [Facepunch Studio](https://rust.facepunch.com)'s game [Rust](https://rust.facepunch.com/), running on [steamcmd](https://developer.valvesoftware.com/wiki/SteamCMD).

This is deployed on Google Cloud Platform, using Kubernetes Engine.

![](/img/header.png)

> Welcome to Rusticana Island, where you are quarantined from the pandemic to an island with a group of other strangers! You are completely isolated. Gather, hunt, build, make friends/foes, and lastly--survive.

---

## Disclaimer

This is a modified version of [@kordless](https://github.com/kordless)'s [gist](https://gist.github.com/kordless/424102dfd6f348f3b8d64b33c52e17ba).

## Requirements

- Google Cloud Platform
- Docker
- Kubectl

This deployment uses an image built by @dids, which is hosted on Docker Hub: https://hub.docker.com/r/didstopia/rust-server/

1. Create a project on Google Cloud Platform.
2. Enable [Google Container Engine APIs](https://console.cloud.google.com/apis/dashboard) for your project.
3. Configure `rust-server.yaml` and `rust-service.yaml`.


## tl;dr

### Creating/running the server

- `./create-cluster.sh` to create clusters (this may take a minute).
- `./start-server.sh` to start the server.
- `./wipe-server.sh` to completely wipe the server from Google, including shutting down the container cluster controllers, the container running the game server AND deleting your server data.
- `./stop-server.sh` to shut the server down, but keep the data intact and the cluster controllers running.

### Joining the server

- `kubectl get services` to get server IP address (check `rust-frontend`'s EXTERNAL-IP).
- In Rust, press <kbd>F1</kbd> to open up the console and type `client.connect <SERVER IP>:28015` (where `<SERVER_IP>` is the server IP address from above step).
- Enjoy!
