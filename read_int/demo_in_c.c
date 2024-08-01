//#define _GNU_SOURCE
//#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

int main(int argc, char *argv[]) {
    puts("asdf");
    fflush(stdout);
    char c = getc(stdin);
    printf("%c\n", c);
    return 0;
}