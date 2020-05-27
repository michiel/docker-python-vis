FROM python:3.7 as base

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y libopenblas-dev

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
