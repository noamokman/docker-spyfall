# What is Spyfall?

Spyfall is a party game designed based on meteor.
This repo helps you run your own instance quickly

The game's source code: https://github.com/evanbrumley/spyfall
Hosted version of the game: http://spyfall.crabhat.com/

# How to use this image

```bash
docker run --name my-spyfall -p 8080:80 -e MONGO_URL=mongodb://my-mongo-server/spyfall -d noamokman/spyfall
```

Then, access it via `http://localhost:8080` or `http://host-ip:8080` in a browser.

# How to pair a mongo db in docker
You can use docker to host the mongo server like so:

```bash
docker network create spyfall-network
docker run --name spyfall-mongo -p 27017:27017 --network spyfall-network -d mongo
docker run --name my-spyfall -p 8080:80 -e MONGO_URL=mongodb://spyfall-mongo/spyfall --network spyfall-network -d noamokman/spyfall
```


## License

[MIT](LICENSE)
