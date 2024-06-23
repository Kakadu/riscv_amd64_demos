#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <stdio.h>

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

int
main(int argc, char *argv[])
{
    size_t         ret;
    char  buffer[4];
    FILE* fp = fopen("test.txt", "r");
    ret = fread(buffer, sizeof(*buffer), ARRAY_SIZE(buffer), fp);
    printf("%s", buffer);
    return 0;
}