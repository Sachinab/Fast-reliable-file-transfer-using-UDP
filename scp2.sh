#!/bin/bash
#echo Lab-5- Fast, Reliable File Transfer
make clean
make
dd if=/dev/urandom of=/tmp/x.txt bs=1M count=1000
./server2 nodea
echo "Server ended"
sleep 5s
./client2 nodeb /tmp/x.txt
echo "Client ended"

