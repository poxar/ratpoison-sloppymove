prefix ?= /usr/local

sloppymove: sloppymove.c
	gcc -o rp_sloppymove sloppymove.c -lX11

clean:
	rm -f rp_sloppymove
	
install:
	install -m 755 -D rp_sloppymove $(DESTDIR)$(prefix)/bin/rp_sloppymove
