CC = gcc
CXX = g++
CXXFLAGS = -I ~/research/cudd-release/cudd -I ~/research/cudd-release/util -I ~/research/cudd-release/
LFLAGS = -static -L ~/research/cudd-release/cudd/.libs/ -lcudd -lm 

default: tutorial1

tutorial1: transfer.o
	${CC} transfer.o -o tutorial1 $(LFLAGS)

transfer.o: transfer.c
	$(CC) transfer.c -c -o transfer.o $(CXXFLAGS) 