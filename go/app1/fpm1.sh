#!/bin/bash
dnf autoremove my-go-app1 -y
rm -f my-go-app1-0.0.3-1.x86_64.rpm
rm -f api_rest1
go build -o api_rest1
fpm -s dir -t rpm \
    -n my-go-app1 -v 0.0.3 \
    --prefix /opt/my-go-app1 \
    --after-install ./after-install1.sh \
    --before-install ./before-install1.sh \
    --rpm-user root --rpm-group root \
    api_rest1 \
    my-go-app1.service
dnf install /mnt/hgfs/A-Complicated-Simple-Test/go/app1/my-go-app1-0.0.3-1.x86_64.rpm -y