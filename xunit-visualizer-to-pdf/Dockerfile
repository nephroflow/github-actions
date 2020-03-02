FROM node:8.17-alpine
RUN apk add --no-cache chromium

# Workaround NPM error 'lifecycle could not get uid/gid' on Alpine
# https://stackoverflow.com/questions/52196518/could-not-get-uid-gid-when-building-node-docker
RUN npm config set unsafe-perm true

RUN npm install -g chrome-headless-render-pdf xunit-viewer@6.0.10
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
