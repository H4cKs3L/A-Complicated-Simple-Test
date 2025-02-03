#!/bin/bash
dnf autoremove my-go-app2 -y
rm -f my-go-app2-0.0.1-1.x86_64.rpm
rm -f api_rest2
go build -o api_rest2
fpm -s dir -t rpm \
    -n my-go-app2 -v 0.0.1 \
    --prefix /opt/my-go-app2 \
    --after-install ./after-install2.sh \
    --before-install ./before-install2.sh \
    --rpm-user root --rpm-group root \
    api_rest2 \
    my-go-app2.service
dnf install /mnt/hgfs/A-Complicated-Simple-Test/go/app2/my-go-app2-0.0.1-1.x86_64.rpm -y