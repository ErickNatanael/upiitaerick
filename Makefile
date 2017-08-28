#baremetal
all: POWER

POWER:power.o power3.o
	ld -m elf_i386 $^ -o $@

power.o:power.s
	as --32 $^ -o power.o

power3.o:power3.s
	as --32 $^ -o power3.o
