FROM debian:bookworm

RUN apt-get update &&\
  apt-get install gcc-11=11.2.0-19
