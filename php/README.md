# README

---

###PHP

####php5.6

编译`php5.6`镜像,安装了如下扩展:

* `gd`
* `iconv`
* `mcrypt`
* `mysqli`

####php7-base

`php7.0.3`原始编译镜像,在原有基础上编译进一些常规使用的扩展(GD,PDO...)

####php7-dev

基于`php7-base`镜像做了如下处理

#####工具

安装 `composer` 工具.

#####扩展

* `memcached` 扩展
* `apcu` 扩展
* `pthreads` 在`CLI`下使用
* `redis` 扩展
* `mongodb` 扩展

#####配置

**opcache**

* `opcache.enable=1`: 启用`opcache`
* `opcache.enable_cli = 1`: 在`CLI`上启用`opcache`
* `opcache.huge_code_pages = 1`: 开启`huge page`,`text`段存放在`huge page`.

`huge_page`: 默认的内存是以4KB分页的,而虚拟地址和内存地址是需要转换的,而这个转换是要查表的,CPU为了加速这个查表过程都会内建TLB(ranslation Lookaside Buffer),显而易见如果虚拟页越小,表里的条目数也就越多,而TLB大小是有限的,条目数越多TLB的Cache Miss也就会越高,所以如果我们能启用大内存页就能间接降低这个TLB Cache Miss.
		
		
		//开启huge_page
		sysctl vm.nr_hugepages=128

**upload**

* `post_max_size = 5M`: POST提交数据的最大值 
* `upload_max_filesize = 5M`: 上传文件最大值

**timezone**

* `date.timezone = 'PRC'`: 设定时区为中国时区

