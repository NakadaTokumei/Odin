#ifndef __INTERNAL_DEF_H__
#define __INTERNAL_DEF_H__

#define BEGIN_NAMESPACE(SPACE)  namespace SPACE {
#define END_NAMESPACE           }

#define _INLINE                 inline

#define _ASM                    asm volatile

#define EXTERN                  extern
#define EXTERN_C                extern "C"

#define EXTERN_START            extern {
#define EXTERN_END              }

#define EXTERN_C_START          extern "C" {
#define EXTERN_C_END            }

#endif