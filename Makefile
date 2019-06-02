all: run

.PHONY: image
image: Dockerfile
	docker build -t karlvr/xbolo-tracker .

.PHONY: run
run: Dockerfile image
	docker run -it -p 40000:40000 karlvr/xbolo-tracker

push: image
	docker push karlvr/xbolo-tracker
