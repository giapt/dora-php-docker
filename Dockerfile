#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for dora-php-docker 1.2
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM giapt/dora-php-docker:1.1

RUN \
    apt-get install git -y && \
    apt-get install vim -y && \
    curl -sL https://gist.githubusercontent.com/giapt/d53c5c1f7d744d4f8b80c79c5b55bfa2/raw/df16c6a5c87994533126a54bc03b2241d0039495/php7_pthreads.sh | bash -


