gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_no_compress_view.o test/test_no_compress_view.c
gcc -fvisibility=hidden  -o test/test_no_compress_view test/test_no_compress_view.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
