
 Build docker image

```shell
  git clone https://github.com/trifonnt/docker-devbox-ubuntu1604--base.git
  cd docker-devbox-ubuntu1604--base/

  docker build -t trifon-devbox-ubuntu:16.04_01 .
```

Check newly created image

```shell
  docker images
 ```
 
 Start docker container with the new image
 
 ```shell
  docker run -ti trifon-devbox-ubuntu:16.04_01
 ```

TODO:
- [ ] Push to store.docker.com
