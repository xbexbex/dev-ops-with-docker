# 1.6
## Commands:
```shell
docker build -t backend .
touch logs.txt
docker run -v "%cd%"/logs.txt:/dir/backend-example-docker/logs.txt -p 8000:8000 backend
```