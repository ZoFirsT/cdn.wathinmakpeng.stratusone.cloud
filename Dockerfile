FROM nginx:alpine

# Copy the static files to Nginx's default public directory
COPY . /usr/share/nginx/html/

# Copy custom Nginx configuration if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80