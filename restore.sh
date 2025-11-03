#!/bin/bash

if [ ! -f qemu-data.tar.gz ]; then
    echo "Backup file qemu-data.tar.gz not found!"
    exit 1
fi

echo "Starting restore of qemu-data..."
mkdir -p /tmp/qemu-data

#esktrak
tar -xzf qemu-data.tar.gz -C /tmp/qemu-data

echo "Restore complete!"
