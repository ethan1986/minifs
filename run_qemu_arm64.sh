#!/bin/bash

qemu-system-aarch64 \
    -machine type=virt \
    -cpu cortex-a57 \
    -smp 2 \
    -m 2048 \
    -nographic \
    -rtc driftfix=slew \
    -kernel $1 \
    --append "console=ttyAMA0 memblock=debug" \
    -initrd $2
