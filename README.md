# 带SSH服务的Dockerfile

## build image

```shell
docker build --rm -f "ssh-centos7/Dockerfile" -t ssh-centos7:latest
```

## Run

```shell
docker run -d --name centos --rm -p 30000:22 ssh-centos7:latest 
```


## ssh进入Container

```shell
ssh root@127.0.0.1 -p 30000
# yes
# frankie
```