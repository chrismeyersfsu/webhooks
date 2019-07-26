
all: build run

build:
	docker build -t chrismeyers/webhooks .

devel:
	docker run -it -p 49160:8080 -v `pwd`:/devel -w /devel chrismeyers/webhooks /bin/bash

run:
	docker run -p 49160:8080 -d chrismeyers/webhooks

push:
	docker push chrismeyers/webhooks
