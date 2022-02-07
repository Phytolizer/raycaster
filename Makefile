CC = clang
CFLAGS = -Wall -Wextra -Wpedantic -Wmissing-prototypes -std=c11 -ggdb `pkg-config --cflags sdl2`
LIBS = `pkg-config --libs sdl2`

.PHONY: all

all: raycaster
raycaster: main.o
	$(CC) $(CFLAGS) $(LIBS) $^ -o $@
%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@
clean:
	rm -vf *.o raycaster
