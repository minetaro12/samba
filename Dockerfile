FROM alpine:3.19.1

RUN apk update && \
    apk add --no-cache samba && \
    mkdir /share

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 445

ENTRYPOINT ["/entrypoint.sh"]