#!/bin/bash

echo "Starting backup of /tmp/qemu-data..."
tar -czf qemu-data.tar.gz -C /tmp/qemu-data . 

echo "Backup complete! Archive created at qemu-data.tar.gz"
