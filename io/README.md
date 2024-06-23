##### RISCV

`grep AT_FDCWD /usr/riscv64-linux-gnu/include/ -r`

https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

##### AMD64

https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl


###### Break

````
b *(&error+184)
b *(error+184)
````
