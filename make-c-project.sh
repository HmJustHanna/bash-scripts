#!/bin/bash
mkdir $1
cd $1
mkdir obj src && touch Makefile
echo 'CC = gcc
TARGET = program
PREF_SRC = ./src/
PREF_OBJ = ./obj/
SRC = $(wildcard $(PREF_SRC)*.c)
OBJ = $(patsubst $(PREF_SRC)%.c, $(PREF_OBJ)%.o, $(SRC))

CFLAGS = -g -Wall

all: $(TARGET)
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) 
$(PREF_OBJ)%.o: $(PREF_SRC)%.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -rf $(TARGET) $(PREF_OBJ)*.o' > Makefile
	
CURRENT_DATE=$(date)
CREATOR="$USER"
touch README.txt
echo "Hi, I'm $CREATOR and I'm learning the c programming language :D 

PROJECT:

NAME: $1
TASKS:
*
*
*
------------------------------
START: $CURRENT_DATE
END:" > README.txt

cd src && touch main.c
echo '#include <stdio.h>
int main() {
	
	return 0;
}' > main.c
