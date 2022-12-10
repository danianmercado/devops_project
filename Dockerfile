FROM python:3.10-alpine
RUN mkdir /app
WORKDIR /app
ADD main.py /app
ADD test.py /app
RUN pip3 install flask flask-mongoengine waitress
