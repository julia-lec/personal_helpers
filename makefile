.PHONY: build install clean

# This compiles the source-files
build: personal_helpers.c personal_helpers.h
	gcc -c personal_helpers.c -o personal_helpers.o
	ar -rc libpersonal_helpers.a personal_helpers.o

# This installes the library and must be run with sudo-permissions
install: build
	cp libpersonal_helpers.a /usr/local/lib
	cp personal_helpers.h /usr/local/include

# This removes the object-files
clean:
	rm personal_helpers.o
	rm libpersonal_helpers.a
