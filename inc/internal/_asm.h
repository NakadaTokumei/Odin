#ifndef __INTERNAL_ASM_H__
#define __INTERNAL_ASM_H__

#include <internal/_def.h>


EXTERN_C_START

// Exclusive Operation
unsigned char
_LDREXB(
    void* ptr
);

unsigned short
_LDREXH(
    void* ptr
);

 
unsigned long
_LDREX(
    void* ptr
);

unsigned char
_STREXB(
    void* ptr, 
    uint8_t data
);

unsigned char
_STREXH(
    void* ptr, 
    uint16_t data
);

unsigned char
_STREX(
    void* ptr, 
    uint32_t data
);

EXTERN_C_END


#endif