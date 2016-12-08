#############################
# Name: Leo Gomez           #
# CruzID: legomez           #
# Class: CMPS-12M           #
# Date: Dec 12, 2014        #
# filename: Makefile        #
# Details: creates and tests#
#   files for lab8          #
#############################


MKFILE    = Makefile

GCC      = gcc -g -O0 -Wall -Wextra -std=gnu99

CSOURCE   = heap.c
OBJECTS   = ${CSOURCE:.c=.o}
EXECBIN   = heap
SOURCES   = ${CSOURCE} ${MKFILE}

all : ${EXECBIN}

${EXECBIN} : ${OBJECTS}
	${GCC} -o $@ ${OBJECTS}

%.o : %.c
	${GCC} -c $<

clean :
	rm -f ${OBJECTS} core

spotless : clean
	rm -f ${EXECBIN}

test : ${EXECBIN}
	./${EXECBIN} 10 test.txt

.PHONY: all clean spotless test
