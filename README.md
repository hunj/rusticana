Howdy Y'all! I'm @kordless on YouTube and I occasionally play and stream Rust, the game.

This repo is for deploying a Rust Server running on Google Container Engine. Google has a deal going where you can get $300 of free credits for a year on Google Cloud, so it's a good excuse to signup and run your own server. And no, I don't work for Google!

This deployment method can be used to start a small server to play with friends or practice building things. In a few days, I'll update the scripts to include a way to save the content you've created, in-game, with others who can then run their own servers and load your content in to explore it for themselves.

For now, start by navigating to [Google Cloud](https://cloud.google.com) and signup for an account. You'll need to enter some credit card details to get this going, but Google is giving you $300 in credits for the next year. Should be enough to make this FREE if you don't run the server all the time and have people connecting to it!

If you ever need to navigate back to Google Cloud, you'll use the following URL:
```
https://console.cloud.google.com/apis/dashboard?
```

Once you have finished signing up, you'll need to go and enable [Google Container Engine APIs](https://console.cloud.google.com/apis/dashboard) for your account. 

Watch the [video for more information](https://www.youtube.com/watch?v=zfDZJDXfhFQ&feature=youtu.be) on setting up your account. The basics below start once you get into the console.

Once you are connected to the Google console do the following to start the server (don't copy and past the dollar signs):

```
$ git clone https://gist.github.com/424102dfd6f348f3b8d64b33c52e17ba.git rust-server
$ cd rust-server
$ ./create-cluster.sh
$ # wait a few minutes
$ ./start-server.sh
$ # wait about 10 minutes, then run this to get the IP:
$ kubectrl get services
NAME            CLUSTER-IP    EXTERNAL-IP      PORT(S)           AGE
kubernetes      10.3.240.1    <none>           443/TCP           2h
rust-frontend   10.3.252.69   104.198.23.205   28015:32632/UDP   2h
```

Use the EXTERNAL-IP of the frontend to build a string to connect to the server in the Rust client. Use F1 to bring up the console in Rust and type:

```
client.connect 104.198.23.205:28015
```

*Obviously, this is the IP address of my server in this example. Use your own in your own example!*

To completely wipe the server from Google, including shutting down the container cluster controllers, the container running the game server AND deleting your server data, do the following: 

```
$ ./wipe-server.sh
```

To shut the server down, but keep the data intact and the cluster controllers running, do the following:

```
$ ./stop-server.sh
```

That's about it. Stay tuned for sharing of worlds.