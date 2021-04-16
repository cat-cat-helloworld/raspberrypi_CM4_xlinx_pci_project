SHELL = /bin/bash
ifneq ($(xvc_bar_num),)
	XVC_FLAGS += -D__XVC_BAR_NUM__=$(xvc_bar_num)
endif

ifneq ($(xvc_bar_offset),)
	XVC_FLAGS += -D__XVC_BAR_OFFSET__=$(xvc_bar_offset)
endif

$(warning XVC_FLAGS: $(XVC_FLAGS).)

topdir := $(shell cd $(src)/.. && pwd)

TARGET_MODULE:=xdma

EXTRA_CFLAGS := -I$(topdir)/include $(XVC_FLAGS)
EXTRA_CFLAGS += -D __LIBXDMA_DEBUG__
EXTRA_CFLAGS += -D INTERNAL_TESTING

#KERNELRELEASE=/home/wg/Documents/linux5/linux
#KERNELRELEASE_HEAD=/home/wg/Documents/linux5/linux/include

KERNELRELEASE=/home/wg/Documents/linux-rpi-5.5.y
KERNELRELEASE_HEAD=/home/wg/Documents/linux-rpi-5.5.y/linux/include

C_FLAGS='-std=c11'
#CC=aarch64-linux-gnu-  
$(TARGET_MODULE)-objs := libxdma.o xdma_cdev.o cdev_ctrl.o cdev_events.o cdev_sgdma.o cdev_xvc.o cdev_bypass.o xdma_mod.o xdma_thread.o
obj-m := $(TARGET_MODULE).o

all :
	$(MAKE) -C $(KERNELRELEASE) -I $(KERNELRELEASE_HEAD)   M=$(PWD) modules ARCH=arm64  CROSS_COMPILE=aarch64-linux-gnu- 

clean:
	$(MAKE) -C $(KERNELRELEASE) M=$(PWD) clean
	@/bin/rm -f *.ko modules.order *.mod.c *.o *.o.ur-safe .*.o.cmd

install: all
	$(MAKE) -C $(KERNELRELEASE) M=$(PWD) modules_install


