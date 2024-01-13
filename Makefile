ARCH=arm-none-eabi-

CPU=armv7-m

CPP=g++
CC=gcc
ASM=as

CPP_OBJ= \

ASM_OBJ= \
	./src/internal/_asm.o

OUTPUT=libodin.a

$(OUTPUT) : $(ASM_OBJ)
	ar crv $@

%.o : %.s
	$(ARCH)$(ASM) -march=$(CPU) -c -o $@ $^

clean:
	rm -rf $(ASM_OBJ)
	rm -rf $(OUTPUT)