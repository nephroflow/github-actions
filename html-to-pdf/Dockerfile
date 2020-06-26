FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y wkhtmltopdf

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]