FROM python:3.10-alpine
RUN mkdir /app
WORKDIR /app
ADD main.py /app
ADD test.py /app
RUN pip3 install flask flask-mongoengine waitress pytest coverage

CMD [ "waitress-serve", "--host", "0.0.0.0", "--port=5001", "main:app"]
