FROM nginx:1.27.4-alpine3.21-slim

COPY entrypoint.sh /entrypoint.sh
COPY website/ /website/
COPY nginx.conf /etc/nginx/nginx.conf

# Give execute permissions to the script
RUN chmod +x /entrypoint.sh

# Use the script as the container entrypoint
ENTRYPOINT ["/entrypoint.sh"]