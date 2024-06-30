//#define _GNU_SOURCE
//#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <stdio.h>

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

int main(int argc, char *argv[]) {
    char  buffer[12];
    FILE* fp = fopen("test.txt", "r");
    size_t ret = fread(buffer, sizeof(*buffer), ARRAY_SIZE(buffer), fp);
    printf("%s\n", buffer);
    return 0;
}