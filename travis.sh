#!/bin/bash
echo
echo
echo
echo "Running 'g++ -Wall -pthread -lpthreads Race.cc'"
echo `g++ -Wall -pthread -lpthread Race.cc`
echo
echo
echo "Running valgrind on Race.cc with 1000000 as argument"
echo `valgrind --leak-check=full --show-leak-kinds=all  ./a.out "100000000"`
echo
echo
echo "Running clang-tidy on Race.cc"
echo `clang-tidy Race.cc -- -Imy_project/include -DMY_DEFINES ...`
echo
echo
echo
echo "Running ./a.out '100000000'"
./a.out 100000000

exit 0
