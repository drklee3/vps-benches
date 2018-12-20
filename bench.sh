#!/bin/bash

# WARNING: This script pipes several external scripts to bash as root.
# Run at your own risk

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

# install dependencies
apt-get install -qq -y time bzip2 bc dnsutils libc-dev lshw ioping dnsutils

# get basic info
echo "Distro Information"
cat /etc/*-release

printf "\n"
lsb_release -a 

printf "\n"
uname -a

printf "\n\nSystem Information"
cat /proc/cpuinfo  

printf "\n\nlshw\n"
lshw

printf "\nlshw -short\n"
lshw -short

printf "\n\nBenchmarks"


# do a bunch of different benchmarks, kinda redundant but oh well

# https://bench.sh
wget -qO- bench.sh | bash

# https://github.com/n-st/nench
wget -qO- wget.racing/nench.sh | bash

# https://github.com/mgutz/vpsbench
wget -qO- https://raw.github.com/mgutz/vpsbench/master/vpsbench | bash

# busylog.net/vps-benchmark/
wget -qO- http://busylog.net/FILES2DW/busytest.sh | bash

# https://github.com/teddysun/across/blob/master/unixbench.sh
wget -qO- https://github.com/teddysun/across/raw/master/unixbench.sh | bash

# Test DNS performance
wget -qO- https://raw.githubusercontent.com/cleanbrowsing/dnsperftest/master/dnstest.sh | bash

