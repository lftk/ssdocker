# ssdocker

本工程使用`docker`并借助`docker compose`来构建[ss-panel][3]和[shadowsocks-go mu][4]服务。

使用`docker`，不仅简化了安装流程，而且可以方便的做到服务的水平扩展，以及数据迁移等。

### 服务组件

[ss-panel][1]是一个shadowsocks多用户的前端。

[shadowsocks-go mu][2]是shadowsocks-go的一个分支，使用mu api与ss-panel进行用户信息交互。

### 适用版本

**ss-panel v3.4.2**

### 参考文档

- [ss-panel 原生安装文档][5]
- [shadowsocks-go mu 原生安装文档][6]
- [dockerfile 使用文档][7]
- [docker compose 介绍文档][8]


[1]: https://github.com/orvice/ss-panel
[2]: https://github.com/orvice/shadowsocks-go/tree/master/mu
[3]: ./ss-panel
[4]: ./shadowsocks-go
[5]: https://sspanel.xyz/docs/intro/installation
[6]: https://sspanel.xyz/docs/ss-go-mu
[7]: https://docs.docker.com/engine/reference/builder
[8]: https://docs.docker.com/compose
