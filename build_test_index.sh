gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_test_index.o test/test_test_index.c
gcc -fvisibility=hidden  -o test/test_test_index test/test_test_index.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
