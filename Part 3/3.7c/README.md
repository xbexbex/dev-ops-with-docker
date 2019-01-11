# 3.7c
For this exercise I assumed that only repositories with a Dockerfile already included were supposed to be used.
### Build  
```
docker build . -t docker-image-builder
```
### Running on Windows
```
docker run -it --rm --privileged -v //var/run/docker.sock:/var/run/docker.sock docker-image-builder
```
### Running on Linux (Possibly?)
```
docker run -it --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock docker-image-builder
```

The container will ask for the desired github url, your docker username, and your docker password. The image will be published as <your-username>/<github-repository-name>:latest
