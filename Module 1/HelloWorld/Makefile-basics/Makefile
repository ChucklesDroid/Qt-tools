# usage:
# make - generates the executables
# make clean - removes the object files

.PHONY = all clean
CC = gcc		#compiler used is gcc
LINKER_FLAG = -lm

SRCS := $(wildcard *.c)
BINS := $(SRCS:%.c=%)


all: ${BINS}

%: %.o
	@echo "Checking..."
	${CC} ${LINKER_FLAG} $< -o $@

%.o: %.c
	@echo "Creating object files..."
	${CC} -c $<

clean:
	@echo "Cleaning object files"
	rm -r *.o
