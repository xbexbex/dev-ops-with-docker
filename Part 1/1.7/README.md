# 1.7
## Commands:
```shell
docker build -t back back
docker build -t front front
touch back/logs.txt
```
```shell
docker run -v "%cd%"/back/logs.txt:/dir/backend-example-docker/logs.txt -p 8000:8000 -d --name back back
docker run -p 5000:5000 -d --name front front
```