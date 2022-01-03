CC = gcc
CXX = g++
CXXFLAGS = -I ~/research/cudd-release/cudd -I ~/research/cudd-release/util -I ~/research/cudd-release/ 
LFLAGS = -static -L ~/research/cudd-release/cudd/.libs/ -lcudd -lm 

default: tutorialprogram 

tutorialprogram: tutorial.o 
	$(CXX) tutorial.o -o tutorialprogram $(LFLAGS) 

tutorial.o: tutorial.c 
	$(CXX) tutorial.c -c -o tutorial.o $(CXXFLAGS) 