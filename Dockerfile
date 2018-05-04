#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for dora-php-docker 1.1
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM giapt/dora-php-docker:1.0

RUN \
    sed -i 's|http://archive|http://us.archive|g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install gifsicle && \
    apt-get install libxml2-dev libxslt1-dev python-dev -y && \
    apt-get install python-lxml -y && \
    apt-get install build-essential libssl-dev -y && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get update && \
    apt-get install nodejs -y && \
    npm install svgexport -g && \
    apt-get install python-pip -y && \
    apt-get install imagemagick -y && \
    pip install svg.path && \
    pip install pydub && \
    apt-get install mecab libmecab-dev mecab-ipadic -y && \
    apt-get install aptitude -y && \
    aptitude install mecab-ipadic-utf8 && \
    apt-get install python-mecab -y && \
    pip install romkan && \
    apt-get install ffmpeg -y && \
    apt-get install libmysqlclient-dev -y && \
    pip install mysql-python && \
    apt-get install vim -y && \
    pip install jaconv


