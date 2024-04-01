#!/bin/bash

KERNEL_VER=${1:-$(uname -r)}

# Get the linux source
apt-get source linux-modules-${KERNEL_VER} > /dev/null
ln -sf $(realpath $(ls -d linux-*/fs/smb/client)) out

# A weird way to update the kernel flags
sed -i "1s/^/ccflags-y += -DCONFIG_CIFS_SMB_DIRECT=y\n/" out/Makefile

