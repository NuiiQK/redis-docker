FROM redis
COPY config/ /usr/local/etc/redis/
EXPOSE 6379
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]