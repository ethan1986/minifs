qemu-system-arm \
	-M versatilepb \
	-kernel $1 \
	-nographic \
	-dtb versatile-pb.dtb \
	-initrd ../common/rootfs_arm32.img \
	-append "root=/dev/ram0 initrd=/bin/sh"
