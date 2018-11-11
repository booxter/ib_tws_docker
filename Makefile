all: build tag login push

login:
	        docker login -u oauth2accesstoken -p $(shell gcloud auth print-access-token) https://gcr.io

build:
	        docker build . -t ibgw

tag:
	        docker tag ibgw gcr.io/quantonomy-123456/ibgw:latest

push:
	        docker push gcr.io/quantonomy-123456/ibgw:latest
