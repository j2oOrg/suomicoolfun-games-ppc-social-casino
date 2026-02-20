# Static site image built on nginx for suomicoolfun.games
FROM nginx:1.27-alpine

# Remove default nginx content before copying the static site.
RUN rm -rf /usr/share/nginx/html/*

# Copy the repository (filtered by .dockerignore) into the web root.
COPY . /usr/share/nginx/html
LABEL org.opencontainers.image.title="suomicoolfun" \
      org.opencontainers.image.url="https://suomicoolfun.games"

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
