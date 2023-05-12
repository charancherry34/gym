FROM python:3.8

ENV PYTHONUNBUFFERED 1

RUN mkdir /gym

WORKDIR /gym

COPY . /gym/

RUN apt-get update && apt-get -y install gcc 

RUN pip install -r requirements.txt

EXPOSE 8000