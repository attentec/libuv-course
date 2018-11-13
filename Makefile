all:
	gcc -I/opt/libuv/include -L/opt/libuv/lib -luv src/hello.c