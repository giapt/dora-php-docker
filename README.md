# Docker ubuntu 16.04 with Apache2 and PHP 7.2

Version 1.0 : ubuntu 16.04 with Apache2 and PHP 7.2, composer
Version 1.1 : ubuntu 16.04, Apache2, PHP 7.2, composer, with extend library for dora
Version 1.2 : ubuntu 16.04, Apache2, PHP 7.2, composer,extend library, pthreads

Sample yml file :
```
lamp:  
  image: giaptd/dora-php-docker:1.2
  ports:
  - "8080:80"
  environment:
  - WEB_DOCUMENT_ROOT=/var/www/dora/frontend/web/
  volumes:
  - "/var/www:/var/www"
  - "/root:/root"
  container_name: dora7.2
  external_links: 
  - "mysql:mysql"
  - "mongodb:mongodb"
```
command : docker-composer -f file.yml up -d