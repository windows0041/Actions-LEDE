# Actions-LEDE

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/Lancenas/actions-openwrt-helloworld/blob/master/LICENSE)

- **感谢** [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)和[coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- 通过创建流程文件，在线编译自定义设备固件；

- 通过修改`diy-part1.sh`文件修改`feeds.conf.default`配置。默认添加第三方源。  

- 通过修改`diy-part2.sh`文件可以自定义默认IP，登陆密码等。按我的需要现在的默认IP为192.168.10.1
- 在 Actions 页面选择Build OpenWrt，然后点击Run Workflow按钮，即可开始编译。（如果需要 SSH 连接则把SSH connection to Actions的值改为true)
- 在触发工作流程后，默认`SSH_ACTIONS: true`在 Actions 页面等待执行到`SSH connection to Actions`步骤，会出现下面信息：  

- 复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端，登陆云menuconfig。
- 命令：`cd openwrt && make menuconfig`

- 新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.top/archives/827/)   
- 完成后按快捷键`Ctrl+D`或执行`exit`命令退出，后续编译工作将自动进行。
- 这样比较灵活，可以根据路由器硬件通过云`menuconfig`自定义配置固件，不需要再导出`.config`和上传
