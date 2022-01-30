FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y redis

ADD ./conf/init_redis.sh /
RUN chmod +x /init_redis.sh
COPY /conf/redis.conf /etc/ 

# start redis cache
EXPOSE 6379
ENTRYPOINT [ "./init_redis.sh" ]