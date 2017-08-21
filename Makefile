CFLAGS=-I/opt/local/include
LDFLAGS=-L/opt/local/lib

rpiboot: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) -Wall -Wextra -g -o $@ $< -lusb-1.0

uninstall:
	rm -f /usr/bin/rpiboot
	rm -f /usr/share/rpiboot/usbbootcode.bin
	rm -f /usr/share/rpiboot/msd.elf
	rm -f /usr/share/rpiboot/buildroot.elf
	rmdir --ignore-fail-on-non-empty /usr/share/rpiboot/

clean:
	rm rpiboot

.PHONY: uninstall clean
