#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for webdevops/php:ubuntu-16.04
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM webdevops/apache:ubuntu-16.04

ENV WEB_DOCUMENT_ROOT=/app \
    WEB_DOCUMENT_INDEX=index.php \
    WEB_ALIAS_DOMAIN=*.vm \
    WEB_PHP_TIMEOUT=600 \
    WEB_PHP_SOCKET=""

RUN \
    apt-get update && \
    apt-get install -y software-properties-common python-software-properties && \
    add-apt-repository -y -u ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y imagemagick graphicsmagick && \
    apt-get install -y libapache2-mod-php7.2 php7.2-bcmath php7.2-bz2 php7.2-cli php7.2-common php7.2-curl php7.2-dba php7.2-gd php7.2-gmp php7.2-imap php7.2-intl php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-odbc php7.2-pgsql php7.2-recode php7.2-snmp php7.2-soap php7.2-sqlite php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip && \
    apt-get install -y php-gnupg php-imagick php-mongodb php-streams php-fxsl && \
    sed -i -e 's/max_execution_time = 30/max_execution_time = 300/g' /etc/php/7.2/apache2/php.ini && \
    sed -i -e 's/upload_max_filesize = 2M/upload_max_filesize = 256M/g' /etc/php/7.2/apache2/php.ini && \
    sed -i -e 's/post_max_size = 8M/post_max_size = 512M/g' /etc/php/7.2/apache2/php.ini && \
    sed -i -e 's/memory_limit = 128M/memory_limit = 512M/g' /etc/php/7.2/apache2/php.ini
    && \
    curl -sL https://gist.githubusercontent.com/giapt/ebbee3a81f32dc497e929c203b32d638/raw/eaeee090f534108409a43189713fc8b26b37d322/install_composer.sh | bash -

