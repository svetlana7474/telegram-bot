FROM php:8.1-apache

# Включаем mod_rewrite (нужно для многих PHP-приложений)
RUN a2enmod rewrite

# Копируем файлы проекта внутрь контейнера
COPY . /var/www/html/

# Делаем директорию files доступной
RUN mkdir -p /var/www/html/files && chmod -R 777 /var/www/html/files

EXPOSE 80
