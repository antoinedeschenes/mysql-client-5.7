FROM debian:buster-slim

COPY ./mysql.gpg /etc/apt/trusted.gpg.d/ 
RUN echo "deb http://repo.mysql.com/apt/debian/ buster mysql-5.7" > /etc/apt/sources.list.d/mysql.list
RUN apt update && apt full-upgrade -y && apt install mysql-client -y
