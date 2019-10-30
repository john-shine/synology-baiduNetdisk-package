# synology-baiduNetdisk-package

百度云的群晖套件，基于百度云Linux版客户端

## 安装

在releases页面下载spk安装包，然后在DSM套件中心中手动安装。注意，spk不包含签名，请在套件中心中设置信任“任何发行者”，避免安装被阻止。

## 自行编译

./pkgCreate.sh 即可在build目录生成spk安装包。

## 问题

如果遇到退出客户端后再次打开客户端，停留在加载界面的进度条中，一直无法进入主界面的情况，需要进入Docker套件，然后点击运行中的johnshine/baidunetdisk-crossover-vnc:latest容器，停止掉再清除容器，最后再启动容器即可。

这个应该是客户端本身的登录问题，清除后，需要重新登录客户端。
