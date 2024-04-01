#!/bin/bash

KERNEL_VER=${1:-$(uname -r)}
KERNEL_DIR=${2:-"/lib/modules/${KERNEL_VER}/build/"}

make -C "${KERNEL_DIR}" M="$(pwd)/out" CONFIG_CIFS_SMB_DIRECT=y modules
