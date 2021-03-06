# version: v1.2.20160215

FROM registry.aliyuncs.com/marmot/php7-base 
ADD ./libmemcached-1.0.18.tar.gz /data/php7extension/libmemcached
ADD ./php7redis.tar.gz /data/php7extension/redis
ADD ./php7memcached.tar.gz /data/php7extension/memcached
ADD ./php7apcu.tar.gz /data/php7extension/apcu
ADD ./composer.phar /usr/local/bin/composer
ADD ./confd /usr/local/bin/confd

RUN apt-get update && apt-get install -y zlib1g-dev git libmemcached-dev  && rm -r /var/lib/apt/lists/* \ 
&& chmod 755 /usr/local/bin/composer \
&& pecl channel-update pecl.php.net \
&& cd /data/php7extension/libmemcached/libmemcached-1.0.18/ \
&& ./configure \
&& make \
&& make install \
&& make clean \
&& cd /data/php7extension/memcached/ \
&& phpize \
&& ./configure \
	 --disable-memcached-sasl \
&& make \
&& make install \
&& make clean \
&& echo "extension=memcached.so" > /usr/local/etc/php/conf.d/memcached.ini \
&& cd /data/php7extension/apcu/ \
&& phpize \
&& ./configure \
&& make \
&& make install \
&& make clean \
&& echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini \
&& pecl install pthreads \
&& echo "extension=pthreads.so" > /usr/local/etc/php/php-cli.ini \
&& cd /data/php7extension/redis/ \
&& phpize \
&& ./configure \
&& make \
&& make install \
&& make clean \
&& echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini \
&& pecl install mongodb \
&& echo "extension=mongodb.so" > /usr/local/etc/php/conf.d/mongodb.ini \
&& set -ex \
&& { \
        echo 'zend_extension=opcache.so'; \
        echo 'opcache.enable=1'; \
        echo 'opcache.enable_cli=1'; \
        echo 'opcache.huge_code_pages=1'; \
} | tee /usr/local/etc/php/conf.d/opcache.ini \
&& { \
        echo 'post_max_size = 5M'; \
        echo 'upload_max_filesize = 5M'; \
} | tee /usr/local/etc/php/conf.d/upload.ini \
&& { \
        echo "date.timezone = 'PRC'"; \
} | tee /usr/local/etc/php/conf.d/timezone.ini \
&& { \
        echo "memory_limit = '512M'"; \
} | tee /usr/local/etc/php/conf.d/memorylimit.ini \
&& rm -rf /data/php7extension \
