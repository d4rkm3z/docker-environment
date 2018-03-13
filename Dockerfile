FROM php:7.1-apache

#Install packages
RUN apt-get update && \
apt-get install -y -o Dpkg::Options::="--force-confold" \
gcc make autoconf libc-dev pkg-config \
vim 
# sendmail \
# libapache2-mod-php5

#Instsll add-apt-repository package
RUN apt-get install -y \
software-properties-common \
python-software-properties

#Install locales (Needs for php repository)
RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# #Php externals
# RUN apt install -y \
# php5-mysqlnd \
# php5-curl \
# php5-gd \
# php5-intl \
# php-pear \
# php5-imagick \
# php5-imap \
# php5-mcrypt \
# php5-memcache \
# php5-pspell \
# php5-recode \
# #php5-snmp \
# php5-sqlite \
# php5-tidy \
# php5-xmlrpc \
# php5-xsl \
# php5-oauth \
# php5-xdebug
# # php5.6-xml php-mbstring libpcre3 libpcre3-dev 
 
#php5.6-mysql \

# RUN apt-get remove -y \
# php5-snmp

#RUN pecl install aouth-1.2.3
# RUN echo "extension=oauth.so" >> /etc/php5/apache2/php.ini

#install apache modules
# RUN a2enmod rewrite

#install extensions
#RUN docker-php-ext-install mbstring pdo pdo_mysql 
#RUN docker-php-ext-enable mbstring pdo pdo_mysql 

RUN usermod -u 1000 www-data