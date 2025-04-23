# Use the official Codespaces LAMP image as a base (Ubuntu + Apache + PHP8.2)
FROM mcr.microsoft.com/devcontainers/php:0-8.2

# Install MySQL Server
RUN sudo apt-get update \
    && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server \
    && sudo apt-get clean

# Enable Apache rewrite (often required for pretty URLs)
RUN sudo a2enmod rewrite

# Expose Apache port
EXPOSE 80
