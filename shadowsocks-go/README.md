# shadowsocks-go

### 安装步骤

#### 1. 编译服务

```shell
~ docker-compose build
```

#### 2. 拉取代码

```shell
~ docker run -it --rm -v $PWD/data/go:/go shadowsocksgo_mu init
```

#### 3. 修改配置

通过第一步拉取代码后，会自动生成配置文件`data/go/bin/config.conf`，
其中已经替换了 redis 地址(不用修改)，其它的配置项可以自行修改。

#### 4. 启动服务

```shell
~ docker-compose up -d
```

### 命令列表

命令       | 说明
---------- | ----------
init | 拉取代码并编译
update | 更新代码并编译
run | 运行程序
bash | 进入shell

如果使用`docker-compose`来执行命令，完成后需要按`ctrl + c`结束。

### 其它

在[docker-compose.yml](./docker-compose.yml)中默认映射的端口号是`1025-1050`。
