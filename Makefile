prefix ?= /usr/local

rp_sloppymove: sloppymove.c
	gcc -o rp_sloppymove sloppymove.c -lX11

clean:
	rm -f rp_sloppymove
	
install: rp_sloppymove
	install -m 755 -D rp_sloppymove $(DESTDIR)$(prefix)/bin/rp_sloppymove

uninstall:
	rm -f $(DESTDIR)$(prefix)/bin/rp_sloppymove
