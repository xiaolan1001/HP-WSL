CC = gcc
CXX = g++
CXXFLAGS = -I ~/research/cudd-release/cudd -I ~/research/cudd-release/util -I ~/research/cudd-release/
LFLAGS = -static -L ~/research/cudd-release/cudd/.libs/ -lcudd -lm 

default: tutorial2

tutorial2: tutorial.o
	${CC} tutorial.o -o tutorial2 $(LFLAGS)

tutorial.o: tutorial.c
	$(CC) tutorial.c -c -o tutorial.o $(CXXFLAGS) 