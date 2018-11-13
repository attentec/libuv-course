#include <stdio.h>
#include "uv.h"

void timer_cb(uv_timer_t* handle)
{
  printf("callback!\n");
}

int main()
{
  uv_loop_t loop;
  uv_timer_t timer;

  uv_loop_init(&loop);
  uv_timer_init(&loop, &timer);
  uv_timer_start(&timer, timer_cb, 1000, 1000);
  uv_run(&loop, UV_RUN_DEFAULT);
  printf("Hello worlds!\n");
  return 0;
}
