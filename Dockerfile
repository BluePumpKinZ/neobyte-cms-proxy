# Use Nginx image to build proxy.
FROM nginx:1.21.0-alpine

# Copy Nginx configuration.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Open port 80.
EXPOSE 80

# Run Nginx in foreground.
CMD ["nginx", "-g", "daemon off;"]
