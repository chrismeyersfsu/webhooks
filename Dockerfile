FROM python:3.6-buster

RUN pip install \
  flask \
  six

WORKDIR /usr/src/webhooks
COPY main.py .
COPY templates/* templates/
COPY example_data/* example_data/
#RUN npm install
#COPY . .

EXPOSE 8080
ENV FLASK_APP=main.py

CMD [ "env", "flask", "run", "--host=0.0.0.0", "--port=8080" ]
