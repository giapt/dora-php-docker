#!/bin/bash

apt-get update
apt install -y libzip-dev bison autoconf build-essential pkg-config git-core \
libltdl-dev libbz2-dev libxml2-dev libxslt1-dev libssl-dev libicu-dev \
libpspell-dev libenchant-dev libmcrypt-dev libpng-dev libjpeg8-dev \
libfreetype6-dev libmysqlclient-dev libreadline-dev libcurl4-openssl-dev
cd $HOME
wget https://github.com/php/php-src/archive/php-7.2.4.tar.gz
tar --extract --gzip --file php-7.2.4.tar.gz
cd php-src-php-7.2.4
./buildconf --force
./configure "--prefix=/etc/php7 --disable-cgi \
   --with-config-file-scan-dir=/etc/php7/etc --enable-maintainer-zts \
   --with-tsrm-pthreads --enable-debug --enable-fpm \
   --with-fpm-user=www-data --with-fpm-group=www-data"
make clean
make && make install
chmod o+x /etc/php7/bin/phpize
chmod o+x /etc/php7/bin/php-config
git clone https://github.com/krakjoe/pthreads.git
cd pthreads
/etc/php7/bin/phpize
./configure \
--prefix='/etc/php7' \
--with-libdir='/lib/x86_64-linux-gnu' \
--enable-pthreads=shared \
--with-php-config='/etc/php7/bin/php-config'
make && make install
cd $HOME/php-src-php-7.2.4
mkdir -p /etc/php7/cli/
cp php.ini-production /etc/php7/cli/php.ini
echo "extension=pthreads.so" | tee -a /etc/php7/cli/php.ini
echo "zend_extension=opcache.so" | tee -a /etc/php7/cli/php.ini
rm /usr/bin/php
ln -s /etc/php7/bin/php /usr/bin/php