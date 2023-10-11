gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_merge_nocompress.o test/test_merge_nocompress.c
gcc -fvisibility=hidden  -o test/test_merge_nocompress test/test_merge_nocompress.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
