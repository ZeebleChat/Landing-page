FROM nginx:alpine

# Copy static files
COPY html/ /usr/share/nginx/html/

# Add gzip compression config
RUN echo 'server { \
    listen 80; \
    root /usr/share/nginx/html; \
    index index.html; \
    \
    gzip on; \
    gzip_types text/html text/css application/javascript application/json application/ld+json text/xml application/xml; \
    gzip_min_length 256; \
    gzip_vary on; \
    \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
    \
    location ~* \.(css|js|json|xml|txt)$ { \
        expires 7d; \
        add_header Cache-Control "public, immutable"; \
    } \
    \
    location ~* \.(html)$ { \
        expires 1h; \
        add_header Cache-Control "public"; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
