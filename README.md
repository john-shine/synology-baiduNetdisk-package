# synology-baiduNetdisk-package

百度云的群晖套件，基于百度云Linux版客户端

## 安装

在releases页面下载spk安装包，然后在DSM套件中心中手动安装。注意，spk不包含签名，请在套件中心中设置信任“任何发行者”，避免安装被阻止。

## 自行编译

./pkgCreate.sh 即可在build目录生成spk安装包。

## 问题（2020-09-15更新）

1. 客户端停留在加载界面的进度条中，一直无法进入主界面，也不出现登录界面，怎么办？

   在BDdownload文件夹下创建一个.reset文件夹。然后，重启johnshine/baidunetdisk-crossover-vnc:latest对应的docker容器即可。

   这个应该是客户端本身的登录问题，清除后，需要重新登录客户端。

2. 如何设置vnc的连接密码？

   首先在本地创建passwd.txt文本文件，内容写上vnc的连接密码。然后在BDdownload文件夹下创建一个.vnc文件夹，将passwd.txt文件上传到.vnc文件夹下面。最后重启对应的docker容器即可。

3. 如何更新百度云客户端为最新版?

   由于最新版客户端兼容性很有问题，在目前群晖至少DSM6.0上无法运行，因此群晖环境下，不建议升级到最新版。
