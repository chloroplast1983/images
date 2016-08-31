# README

---

项目用镜像 `Dockerfile`,包含编排所需的文件.这里所发的镜像都是重新编译后的.

###目录

* `php`: php开发使用镜像
	* `php5.6`: php 5.6版本镜像
	* `php7-base`: php 7基础镜像
	* `php7-dev`: php 7开发镜像
* `nginx`: nginx 镜像
* `heapster`: k8s 监控镜像,主要为了加速使用
* `jenkins`: jenkins 镜像
* `k8s-skydns`: k8s 的 skydns 相关镜像
	* `etcd`: etcd 镜像
	* `healthz`: exechealthz 镜像
	* `kube2sky`: kube2sky 镜像
	* `skydns`: skydns 镜像
* `memcached`: memcached 官方镜像
* `mongo`
	* `mongo-3.2`: mongo 官方 3.2 版本镜像
	* `rockmongo`: rocomongo (mongo管理工具) 镜像
* `mysql`
	* `mysql-5.6`: mysql 5.6 官方镜像
* `phpmyadmin`: mysql phpmyadmin 镜像 
	
###php

[php](./php/README.md "php") 