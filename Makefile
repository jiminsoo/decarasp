CC = gcc
CFLAGS = -W -Wall
LDFLAGS = -lwiringPi
EXE_NAME = testWiringPi
OBJECTS = led.o

$(EXE_NAME) : $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

all: $(EXE_NAME)

clean :
	rm -f *.o $(EXE_NAME)

