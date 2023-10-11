gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_merge_index.o test/test_merge_index.c
gcc -fvisibility=hidden  -o test/test_merge_index test/test_merge_index.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
