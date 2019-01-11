# 3.5
### Yle-dl size beforehand: 684 MB  
```
docker history yle-dl
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
8beee7aca1d3        28 seconds ago      /bin/sh -c #(nop)  ENTRYPOINT ["/root/.local…   0B
ffebdd2ea6c2        28 seconds ago      /bin/sh -c #(nop) WORKDIR /downloads            0B
6622fd10ed41        29 seconds ago      /bin/sh -c apt-get update &&     apt-get ins…   568MB
2448b0c026a9        18 hours ago        /bin/sh -c #(nop)  ENV LC_ALL=C.UTF-8           0B
b0ef3016420a        4 days ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B
<missing>           4 days ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B
<missing>           4 days ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B
<missing>           4 days ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B
<missing>           4 days ago          /bin/sh -c #(nop) ADD file:7f95be7c8278786d5…   117MB
```
### Yle-dl size afterwards: 197 MB
```
docker build yle-dl yle-dl
docker history yle-dl
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
591512948c12        26 seconds ago      /bin/sh -c #(nop)  ENTRYPOINT ["/usr/local/b…   0B
a29648364a7b        27 seconds ago      /bin/sh -c #(nop) WORKDIR /downloads            0B
8582cc64190c        27 seconds ago      /bin/sh -c #(nop)  USER app                     0B
75b83337f85d        28 seconds ago      /bin/sh -c apk add --no-cache wget ffmpeg &&…   139MB
66c225e226f9        12 days ago         /bin/sh -c #(nop)  CMD ["python2"]              0B
<missing>           12 days ago         /bin/sh -c set -ex;   wget -O get-pip.py 'ht…   5.92MB
<missing>           12 days ago         /bin/sh -c #(nop)  ENV PYTHON_PIP_VERSION=18…   0B
<missing>           12 days ago         /bin/sh -c set -ex  && apk add --no-cache --…   47.4MB
<missing>           12 days ago         /bin/sh -c #(nop)  ENV PYTHON_VERSION=2.7.15    0B
<missing>           12 days ago         /bin/sh -c #(nop)  ENV GPG_KEY=C01E1CAD5EA2C…   0B
<missing>           12 days ago         /bin/sh -c apk add --no-cache ca-certificates   556kB
<missing>           12 days ago         /bin/sh -c #(nop)  ENV PYTHONIOENCODING=UTF-8   0B
<missing>           12 days ago         /bin/sh -c #(nop)  ENV LANG=C.UTF-8             0B
<missing>           12 days ago         /bin/sh -c #(nop)  ENV PATH=/usr/local/bin:/…   0B
<missing>           12 days ago         /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>           12 days ago         /bin/sh -c #(nop) ADD file:2ff00caea4e83dfad…   4.41MB
```