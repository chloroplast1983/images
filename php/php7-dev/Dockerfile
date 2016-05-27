# version: v1.2.20160215

FROM 120.25.87.35:5000/php:7-fpm-compiled
ADD ./libmemcached-1.0.18.tar.gz /data/php7extension/libmemcached
ADD ./php7redis.tar.gz /data/php7extension/redis
ADD ./php7memcached.tar.gz /data/php7extension/memcached
ADD ./php7apcu.tar.gz /data/php7extension/apcu
ADD ./composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y zlib1g-dev git && rm -r /var/lib/apt/lists/* \ 
&& chmod 755 /usr/local/bin/composer \
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
&& cd /data/php7extension/redis/ \
&& phpize \
&& ./configure \
&& make \
&& make install \
&& make clean \
&& echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini \
&& set -ex \
&& { \
        echo 'zend_extension=opcache.so'; \
        echo 'opcache.enable=1'; \
        echo 'opcache.enable_cli=1'; \
} | tee /usr/local/etc/php/conf.d/opcache.ini \
&& rm -rf /data/php7extension \
