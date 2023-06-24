PROJECT = jpeg-decomp
CC = gcc
CFLAGS = -w -Os #size
#CFLAGS = -w -g #debug
LDFLAGS = -s

all: $(PROJECT)

$(PROJECT): src/$(PROJECT).c src/MCU.h
	$(CC) $(CFLAGS) $< $(LDFLAGS) -o $@

clean:
	rm -f $(PROJECT)
