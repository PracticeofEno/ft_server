FROM	debian:buster

LABEL	maintainer="sanghpar@student.42seoul.kr"

RUN	apt-get update && apt-get install -y \
	vim \
	wget \
	nginx \
	mariadb-server \
	php-mysql \
	php-mbstring \
	openssl \
	php7.3-fpm

RUN	wget https://wordpress.org/latest.tar.gz
RUN	wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz

COPY	./srcs/run.sh ./
COPY	./srcs/default ./tmp
COPY	./srcs/wp-config.php ./tmp
COPY	./srcs/config.inc.php ./tmp

EXPOSE 80 443

CMD	bash run.sh
