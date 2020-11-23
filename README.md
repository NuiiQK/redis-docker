# redis-docker
基于官方最新版redis 创建镜像
自定义配置

#linux启动镜像
* 新建文件夹用于挂载到容器目录
> mkdir /home/redis/data

[自动重启启动]
> docker run --restart=always --name redis -p 6379:6379 -v /home/redis/data:/data -d nuiiqk/redis:latest


#win启动镜像
* 新建文件夹用于挂载到容器目录
> F:\redis\data

[自动重启启动]
> docker run --restart=always --name redis -p 6379:6379 -v F:\redis\data:/data -d nuiiqk/redis:latest