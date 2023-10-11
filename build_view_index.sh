gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_view_index.o test/test_view_index.c
gcc -fvisibility=hidden  -o test/test_view_index test/test_view_index.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
