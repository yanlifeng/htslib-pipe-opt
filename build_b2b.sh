gcc -Wall -g -O2 -fvisibility=hidden  -I.  -c -o test/test_view_b2b.o test/test_view_b2b.c
gcc -fvisibility=hidden  -o test/test_view_b2b test/test_view_b2b.o libhts.a -ldeflate -llzma -lbz2 -lz -lm   -lpthread
