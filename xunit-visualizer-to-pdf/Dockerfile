FROM node:8.16.2-alpine
RUN apk add --no-cache chromium
RUN npm install -g chrome-headless-render-pdf xunit-viewer@6.0.10
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]