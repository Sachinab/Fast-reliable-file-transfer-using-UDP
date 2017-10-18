#!/bin/bash
echo Lab-5- Fast, Reliable File Transfer
make clean
make
START=$(date +%s)
#make
#dd if=/dev/urandom of=/tmp/x1.txt bs=1M count=1
#xterm -title "server" -hold -e "echo server" & #"./server client"
#xterm -title "client" -hold -e "echo client"  #"./client server /tmp/localhost" 
./client2 nodeb /tmp/x.txt
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "sent time is $DIFF seconds"

START1=$(data+%s)
./server2 nodea
#./server2 nodea
END1=$(date +%s)
DIFF1=$(( $END1 - $START1 ))
echo "receive time is $DIFF1 seconds"

Total=$(($END1 -$START))
echo "Total time for send and receive is $Total seconds"
