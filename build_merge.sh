gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_merge.o test/test_merge.c
gcc -fvisibility=hidden  -o test/test_merge test/test_merge.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
