#base image
FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

#create folder in the dockerimage
RUN mkdir /app

WORKDIR /app

#copy from local->docker-image
COPY ./app /app

RUN adduser -D user
USER user

EXPOSE 80

