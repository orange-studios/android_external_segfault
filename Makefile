CROSS_COMPILE:= aarch64-linux-androidkernel-
ARCH:= arm64

CC:= $(CROSS_COMPILE)gcc
LD:= $(CROSS_COMPILE)ld
PWD := $(shell pwd) 

CFLAGS += -I /mnt/sda/yangmiansi/workspace/kwe1901/bionic/libc/include/ /mnt/sda/yangmiansi/workspace/kwe1901/bionic/libc/kernel/uapi/
LDFLAGS += -L 

test: 
	$(CC) $(CFLAGS) -o test test.c

