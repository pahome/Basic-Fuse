fuse : fuse.o log.o
	gcc -g -o fuse fuse.o log.o `pkg-config fuse --libs`

fuse.o : fuse.c log.h params.h
	gcc -g -Wall `pkg-config fuse --cflags` -c fuse.c

log.o : log.c log.h params.h
	gcc -g -Wall `pkg-config fuse --cflags` -c log.c

clean:
	rm -f fuse *.o
