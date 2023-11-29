# How to use
TODO : OS 자동화
0. export NAME=$(cat /etc/os-release | grep PRETTY_NAME ) \ export OS_NAME=$(for i in $(echo $NAME | tr "/""))
1. curl -O https://raw.githubusercontent.com/KyongHwan-Kim/pre-installer/master/docker/$OS_NAME