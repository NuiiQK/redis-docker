# redis-docker
* 基于最新版redis 创建镜像<br>
* 自定义配置包含<br>
（1）注释掉bind 127.0.0.1（外网访问）<br>
（2）添加daemonize no（解决启动报错）<br>
（3）修改protected-mode yes->no（外网访问）<br>
（4）如需设置密码可添加requirepass yourpassword（自定义auth密码）<br>

# linux启动镜像
* 新建文件夹用于挂载到容器目录
> mkdir /app/docker/data/redis/data

[自动重启启动]
> docker run --restart=always --name redis -p 6379:6379 -v /app/docker/data/redis/data:/data -d nuiiqk/redis:latest [如需设置密码,尾部加上 --requirepass "密码"]


# win启动镜像
* 新建文件夹用于挂载到容器目录
> F:\redis\data

[自动重启启动]
> docker run --restart=always --name redis -p 6379:6379 -v F:\app\docker\data\redis\data:/data -d nuiiqk/redis:latest [如需设置密码,尾部加上 --requirepass "密码"]

# 进入docker运行环境
> docker exec -it redis /bin/bash
> docker exec -it redis redis-cli
