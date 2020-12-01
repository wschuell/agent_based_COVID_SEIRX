FROM python:3.8

RUN apt-get update && apt-get upgrade -qq

ADD ./requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN mkdir /seirx
WORKDIR /seirx

RUN python3 -m ipykernel install

