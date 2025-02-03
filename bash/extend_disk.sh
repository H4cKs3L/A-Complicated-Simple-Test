#!/bin/bash
sudo parted /dev/nvme0n1 resizepart 2 100%
sudo pvresize /dev/nvme0n1p2
sudo lvextend -l +100%FREE /dev/mapper/rl-root
sudo xfs_growfs /