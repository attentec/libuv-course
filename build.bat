SETLOCAL
SET NAME=libuv-course
SET VPATH=%~dp0/src:/home/libuv-course/src

docker run --name %NAME% -v %VPATH% --rm -it libuv-course-image
ENDLOCAL