

pcieax7103x4_128ddr3   vivado project
xdma_xilinx_nochage    xilinx dirver
xdma_my_test           xilinx dirver and I change little code 

raspberry pi cm4 system  :
my System is to download the latest official system of raspberry pi. But I changed the kernel because I couldn't install the latest kernel code.

Here are my steps to build the kernel:
1. I download the kernel
git clone --depth=1 --branch rpi-5.5.y https://gitee.com/nzwxl/linux

2.
cd linux
make distclean
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig   #  I quit menuconfig  no change  anything

make -j5 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

I used xilinx demo test,ubuntu 1604 amd 64 sysyem read and write is ok,but raspberry pi cm4 do not work.
can you help me?
