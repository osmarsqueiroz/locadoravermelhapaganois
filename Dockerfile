FROM php:7.2

RUN apt-get update && apt-get install -y \
    libssl-dev \
    unzip \
    git

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install

ENV PATH="$PATH:/usr/src/app/vendor/bin"