ARCH=arm-none-eabi-

CPP=g++
CC=gcc
ASM=as

CPP_OBJ= \

ASM_OBJ= \
	./src/internal/_asm.o

OUTPUT=libodin.a

$(OUTPUT)

%.o : %.s
	$(ARCH)$(ASM) -c -o $^ $@