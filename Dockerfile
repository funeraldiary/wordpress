# Use official WordPress image with PHP 8.3 and Apache
FROM wordpress:php8.3-apache

# Install necessary packages as root
RUN apt-get update && apt-get install -y magic-wormhole

# Change shell for www-data (if needed)
RUN usermod -s /bin/bash www-data

# Ensure proper ownership of web directory
RUN chown -R www-data:www-data /var/www/html

# Switch to the www-data user
USER www-data
