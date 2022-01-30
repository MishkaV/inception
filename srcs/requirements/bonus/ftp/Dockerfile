FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y vsftpd openssl openssh-server

COPY conf/init_ftp.sh ./
COPY conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN chmod +x ./init_ftp.sh
RUN mkdir -p /home/vftp/$FTP_USER; chown -R ftp:ftp /home/vftp

RUN apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 \
     -newkey rsa:2048 \
     -keyout /etc/ssl/jbenjy.key \
     -out /etc/ssl/jbenjy.crt \
     -subj "/C=RU/ST=Russia/L=Moscow/O=school21/OU=21Moscow/CN=jbenjy" ;


EXPOSE 21000 21
ENTRYPOINT [ "./init_ftp.sh" ]
