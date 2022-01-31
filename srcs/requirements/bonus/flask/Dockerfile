FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y python3 python3-pip

WORKDIR /app
COPY /conf/app.py .
COPY /conf/requirements.txt .
COPY /conf/*.html ./templates/

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]