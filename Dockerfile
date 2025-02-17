FROM php:7.4-apache

# Install required extensions
RUN docker-php-ext-install pdo_mysql

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP application code to the container
COPY . /var/www/html

# Set up the database connection details as environment variables
ENV DB_ROOT_PASSWORD=Training@2288
ENV DB_HOST=mysql
ENV DB_PORT=3306
ENV DB_DATABASE=simple_attendance_db
ENV DB_USERNAME=admin
ENV DB_PASSWORD=Training@2288

# Expose the Apache web server port
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]
