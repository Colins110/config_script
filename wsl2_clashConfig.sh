#!/bin/bash

shellName=`echo $SHELL | awk -F "/" '{print $NF}'`

if [ $shellName == 'bash' ]
then
    echo 'hostip=$(cat /etc/resolv.conf |grep -oP "(?<=nameserver\ ).*")' >> ~/.bashrc
    echo 'setp="export https_proxy=http://${hostip}:7890;export http_proxy=http://${hostip}:7890;export all_proxy=socks5://${hostip}:7890;export ALL_PROXY=socks5://${hostip}:7890;"' >> ~/.bashrc
    echo 'alias unsetp="unset https_proxy; unset http_proxy; unset all_proxy; unset ALL_PROXY;"' >> ~/.bashrc
elif [ $shellName == 'zsh' ]
then
    echo 'hostip=$(cat /etc/resolv.conf |grep -oP "(?<=nameserver\ ).*")' >> ~/.zshrc
    echo 'setp="export https_proxy=http://${hostip}:7890;export http_proxy=http://${hostip}:7890;export all_proxy=socks5://${hostip}:7890;export ALL_PROXY=socks5://${hostip}:7890;"' >> ~/.zshrc
    echo 'alias unsetp="unset https_proxy; unset http_proxy; unset all_proxy; unset ALL_PROXY;"' >> ~/.zshrc
fi