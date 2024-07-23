FROM alpine:3.20.2

RUN apk update && \
    apk add --no-cache samba && \
    mkdir /share

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 445

ENTRYPOINT ["/entrypoint.sh"]
