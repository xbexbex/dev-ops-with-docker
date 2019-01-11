# 3.1
### Backend size beforehand: 417 MB  
```
docker history back
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
b1750ffe7b95        33 seconds ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
a55e2245b86c        34 seconds ago       /bin/sh -c npm install                          57.7MB
884fdcdf97ce        57 seconds ago       /bin/sh -c #(nop) WORKDIR /dir/backend-examp…   0B
77d332f5d434        58 seconds ago       /bin/sh -c git clone https://github.com/dock…   394kB
0331279b4797        About a minute ago   /bin/sh -c apt-get install -y nodejs            93.9MB
6146c99d91b8        About a minute ago   /bin/sh -c curl -sL https://deb.nodesource.c…   33.3MB
c2f984396113        About a minute ago   /bin/sh -c apt-get update && apt-get install…   115MB
abad9ce24fcb        2 minutes ago        /bin/sh -c #(nop)  EXPOSE 8000                  0B
32b84b075350        2 minutes ago        /bin/sh -c #(nop) WORKDIR /dir                  0B
b0ef3016420a        3 days ago           /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           3 days ago           /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           3 days ago           /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           3 days ago           /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           3 days ago           /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Backend size afterwards: 316 MB
```
docker build back -t back
docker history back
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
7f5f4ff5abce        5 seconds ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
df110fa57e17        6 seconds ago       /bin/sh -c #(nop) WORKDIR /app                  0B
5efe335867ea        6 seconds ago       /bin/sh -c #(nop)  EXPOSE 8000                  0B
3e535dfd1994        7 seconds ago       /bin/sh -c apt-get update &&     apt-get ins…   199MB
b0ef3016420a        3 days ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           3 days ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           3 days ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           3 days ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           3 days ago          /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Frontend size beforehand: 492 MB
```
docker history front
IMAGE               CREATED              CREATED BY                                      SIZE                COMMENT
bf553bc48d47        19 seconds ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
81826d515035        20 seconds ago       /bin/sh -c npm install                          132MB
841b3026c445        41 seconds ago       /bin/sh -c #(nop) WORKDIR /dir/frontend-exam…   0B
52bd1768197f        42 seconds ago       /bin/sh -c git clone https://github.com/dock…   512kB
07c82e43f27c        45 seconds ago       /bin/sh -c apt-get install -y nodejs            93.9MB
80a7bfcb2477        About a minute ago   /bin/sh -c curl -sL https://deb.nodesource.c…   33.3MB
22cc809155f6        About a minute ago   /bin/sh -c apt-get update && apt-get install…   115MB
72b479fa449e        2 minutes ago        /bin/sh -c #(nop)  EXPOSE 5000                  0B
32b84b075350        About an hour ago    /bin/sh -c #(nop) WORKDIR /dir                  0B
b0ef3016420a        3 days ago           /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           3 days ago           /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           3 days ago           /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           3 days ago           /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           3 days ago           /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Frontend size afterwards: 390 MB
```
docker build front -t front
docker history front
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
a4a073e0a003        56 seconds ago      /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
e8f932ed479a        56 seconds ago      /bin/sh -c #(nop) WORKDIR /app                  0B
ff62f79cfdff        57 seconds ago      /bin/sh -c #(nop)  EXPOSE 5000                  0B
f6d03190378f        58 seconds ago      /bin/sh -c apt-get update &&     apt-get ins…   274MB
b0ef3016420a        3 days ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           3 days ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           3 days ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           3 days ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           3 days ago          /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```