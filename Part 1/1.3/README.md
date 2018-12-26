# 1.3
## Commands:
#### console 1:
```shell
docker run -it --name 1.3 ubuntu:16.04 sh -c "read website; sleep 3; curl http://$website;"
```

#### console 2:
```shell
docker exec -it 1.3 bash
apt-get update
apt-get install curl -y
```

#### console 1:
```shell
helsinki.fi
```
