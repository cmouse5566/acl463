#!/bin/bash
sed -i 's/^expose_php = On/expose_php = Off/g' /etc/php.ini
sed -i 's/^SELINUX=.*$/SELINUX=disabled/g' /etc/selinux/config
cat >> /etc/pip.conf << EOF
[global]
index-url = http://pypi.douban.com/simple/
trusted-host = pypi.douban.com
EOF
