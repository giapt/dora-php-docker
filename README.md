# Docker ubuntu 16.04 with Apache2 and PHP 7.2

Sample yml file :
```
lamp:  
  image: dora-php-docker:latest
  ports:
  - "8080:80"
  environment:
  - WEB_DOCUMENT_ROOT=/var/www/dora/frontend/web/
  volumes:
  - "/var/www:/var/www"
  - "/root:/root"
  container_name: dora
  external_links: 
  - "mysql:mysql"
  - "mongodb:mongodb"
```
command : docker-composer -f file.yml up