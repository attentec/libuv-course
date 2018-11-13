FROM d9magai/libuv:latest

WORKDIR /home/libuv-course
COPY Makefile .
ENTRYPOINT make && ./a.out