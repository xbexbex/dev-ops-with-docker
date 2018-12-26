# 1.8
Link to docker hub: (https://cloud.docker.com/repository/docker/xbexbex/react-webpack-typescript-babel-sass-template)[https://cloud.docker.com/repository/docker/xbexbex/react-webpack-typescript-babel-sass-template]
## Running
Install and run with:
```shell
docker run -p 8080:8080 -d xbexbex/react-webpack-typescript-babel-sass-template
```
The app should now be visible at http://localhost:8080
## Commands:
```shell
docker build -t react-webpack-typescript-babel-sass-template .
docker tag react-webpack-typescript-babel-sass-template xbexbex/react-webpack-typescript-babel-sass-template
docker login
docker push xbexbex/react-webpack-typescript-babel-sass-template
```