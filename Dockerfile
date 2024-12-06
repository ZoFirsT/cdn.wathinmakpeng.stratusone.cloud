# Use a base image with Nginx
FROM nginx:alpine

# Copy files to Nginx's HTML directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 96

