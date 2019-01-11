# 3.4
### Backend size beforehand: 316 MB  
```
docker history back
IMAGE               CREATED              CREATED BY                                      SIZE                COMMENT
15de3296af97        About a minute ago   /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
b30664a05766        About a minute ago   /bin/sh -c #(nop) WORKDIR /app                  0B
740e0c70850a        About a minute ago   /bin/sh -c #(nop)  EXPOSE 8000                  0B
19d4e7f2692f        About a minute ago   /bin/sh -c #(nop)  USER app                     0B
d195a68558ff        About a minute ago   /bin/sh -c apt-get update &&     apt-get ins…   199MB
b0ef3016420a        4 days ago           /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           4 days ago           /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           4 days ago           /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           4 days ago           /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           4 days ago           /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Backend size afterwards: 129 MB
```
docker build back -t back
docker history back
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
43f964f1911b        21 seconds ago      /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
8a88f460d4cf        21 seconds ago      /bin/sh -c #(nop) WORKDIR /app                  0B
6acd445376af        21 seconds ago      /bin/sh -c #(nop)  EXPOSE 8000                  0B
720f2d84a6de        22 seconds ago      /bin/sh -c #(nop)  USER node                    0B
dcd9855491fe        2 minutes ago       /bin/sh -c apk add --no-cache --virtual git …   57.9MB
288d2f688643        5 days ago          /bin/sh -c #(nop)  CMD ["node"]                 0B
<missing>           5 days ago          /bin/sh -c apk add --no-cache --virtual .bui…   5.08MB
<missing>           5 days ago          /bin/sh -c #(nop)  ENV YARN_VERSION=1.12.3      0B
<missing>           5 days ago          /bin/sh -c addgroup -g 1000 node     && addu…   61.2MB
<missing>           5 days ago          /bin/sh -c #(nop)  ENV NODE_VERSION=10.15.0     0B
<missing>           12 days ago         /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>           12 days ago         /bin/sh -c #(nop) ADD file:2ff00caea4e83dfad…   4.41MB
```
### Frontend size beforehand: 391 MB
```
docker history front
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
3dd03fb0b6a2        3 minutes ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
5d500e2dc04a        3 minutes ago       /bin/sh -c #(nop) WORKDIR /app                  0B
609dd7b8a794        3 minutes ago       /bin/sh -c #(nop)  EXPOSE 5000                  0B
c215794ed94f        3 minutes ago       /bin/sh -c #(nop)  USER app                     0B
f59189fe7139        3 minutes ago       /bin/sh -c apt-get update &&     apt-get ins…   274MB
b0ef3016420a        4 days ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           4 days ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           4 days ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           4 days ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           4 days ago          /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Frontend size afterwards: 203 MB
```
docker build front -t front
docker history front
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
79b7b5d4f327        3 minutes ago       /bin/sh -c #(nop)  CMD ["/bin/sh" "-c" "npm …   0B
9c2f5f474404        3 minutes ago       /bin/sh -c #(nop) WORKDIR /app                  0B
71caef820686        3 minutes ago       /bin/sh -c #(nop)  EXPOSE 5000                  0B
63e5f3d257e6        3 minutes ago       /bin/sh -c #(nop)  USER node                    0B
621d31609b69        3 minutes ago       /bin/sh -c apk add --no-cache --virtual git …   133MB
288d2f688643        5 days ago          /bin/sh -c #(nop)  CMD ["node"]                 0B
<missing>           5 days ago          /bin/sh -c apk add --no-cache --virtual .bui…   5.08MB
<missing>           5 days ago          /bin/sh -c #(nop)  ENV YARN_VERSION=1.12.3      0B
<missing>           5 days ago          /bin/sh -c addgroup -g 1000 node     && addu…   61.2MB
<missing>           5 days ago          /bin/sh -c #(nop)  ENV NODE_VERSION=10.15.0     0B
<missing>           12 days ago         /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>           12 days ago         /bin/sh -c #(nop) ADD file:2ff00caea4e83dfad…   4.41MB
```