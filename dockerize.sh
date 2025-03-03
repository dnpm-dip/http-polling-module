#!/bin/bash


IMAGE=ghcr.io/dnpm-dip/http-polling-module:1.1

sudo docker build -t $IMAGE --build-arg MODULE_JAR=HttpPollingModule-1.1.jar .


echo "Push image to GHCR? (y / N)"
while true; do
  read push
  case $push in
    y*) sudo docker push $IMAGE; break;;
    * ) exit;;
  esac
done

