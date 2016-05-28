# README

---

项目用镜像 `Dockerfile`,包含编排所需的文件.这里所发的镜像都是重新编译后的.

###目录

* `php`: php开发使用镜像
	* `php7-original`: php7原始编译镜像,在原有基础上编译进一些常规使用的扩展(GD,PDO...)
	* `php7-dev`: php7开发使用镜像,额外编译进`composer`,`memcached`,`redis`,`apcu`.
* `nginx`: 我们使用原始的镜像配合不同的配置文件.
	* `Dockerfile`: 编译文件 
	* `conf/nginx.conf`: 默认配置文件.
	* `conf/conf.d/`: 每个域名自己的配置文件,这里留空,可以把每个域名下的文件复制到内.
	* `api.lvsaas.com`
	* `api.devlvsaas.com`
