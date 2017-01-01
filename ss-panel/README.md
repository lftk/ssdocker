# ss-panel

### 安装步骤

#### 1. 编译服务

```shell
~ docker-compose build
```

#### 2. 拉取代码

```shell
~ docker run -it --rm -v $PWD/data/ss-panel:/var/www/html sspanel_ss-panel init
```

#### 3. 修改配置

通过第一步拉取代码后，会自动生成配置文件`data/ss-panel/.env`，
其中已经替换了 mysql 和 redis 地址(不用修改)，其它的配置项可以自行修改。

#### 4. 初始化数据库

```shell
~ mkdir data/initdb
~ cp data/ss-panel/db.sql data/initdb
```

这步只需要拷贝`db.sql`，下一步启动服务会自动初始化数据库。

#### 5. 启动服务

```shell
~ docker-compose up -d
```

#### 6. 创建管理员

```shell
~ docker-compose run ss-panel create-admin
```

这里使用了`docker-compose`来启动容器执行命令，由于`restart: always`的缘故，
在命令执行完成后会自动重启容器，所以需要手动按`ctrl + c`来真正退出容器。

### 命令列表

命令       | 说明
---------- | ----------
init | 拉取代码
reset-traffic | 重置流量
reset-diary-mail | 发送流量使用情况邮件
bash | 进入shell

如果使用`docker-compose`来执行命令，完成后需要按`ctrl + c`结束。
