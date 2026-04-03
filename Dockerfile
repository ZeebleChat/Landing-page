# ── Zeeble Landing Page ────────────────────────────────────────────────────
# Minimal nginx:alpine image serving static HTML
# Image size: ~10MB

FROM nginx:1.27-alpine

# Remove default nginx config and page
RUN rm /etc/nginx/conf.d/default.conf && rm -rf /usr/share/nginx/html/*

# Copy nginx config
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy static files
COPY html/ /usr/share/nginx/html/

# Run nginx as non-root
RUN addgroup -S landing && adduser -S landing -G landing \
    && chown -R landing:landing /usr/share/nginx/html \
    && chown -R landing:landing /var/cache/nginx \
    && chown -R landing:landing /var/log/nginx \
    && touch /var/run/nginx.pid \
    && chown landing:landing /var/run/nginx.pid

USER landing

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD wget -qO- http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
