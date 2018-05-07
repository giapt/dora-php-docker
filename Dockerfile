#+++++++++++++++++++++++++++++++++++++++
# Dockerfile for dora-php-docker 1.3
#    -- automatically generated  --
#+++++++++++++++++++++++++++++++++++++++

FROM giapt/dora-php-docker:1.2

RUN \
	touch /docker.stderr && \
	touch /docker.stdout && \
    chmod 777 /docker.stderr && \
    chmod 777 /docker.stdout


