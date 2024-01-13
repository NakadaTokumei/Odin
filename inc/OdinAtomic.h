#ifndef __ODINATOMIC_H__
#define __ODINATOMIC_H__

#include <cstdint>

#include <type_traits>

#include <internal/_def.h>
#include <internal/_asm.h>

BEGIN_NAMESPACE(odin)

template<typename T>
class Atomic
{
    T _val;
public:
    Atomic() = default;

    bool 
    set(T val)
    {
        bool status = false;
        
        if constexpr (std::is_same_v<T, int> || 
                      std::is_same_v<T, uint32_t>)
        {
            status = static_cast<bool>(_STREX(&_val, val));
        }
        else if constexpr (std::is_same_v<T, short> || 
                           std::is_same_v<T, uint16_t>)
        {
            status = static_cast<bool>(_STREXH(&_val, val));
        }
        else if constexpr (std::is_same_v<T, char> || 
                           std::is_same_v<T, uint8_t> ||
                           std::is_same_v<T, bool>)
        {
            status = static_cast<bool>(_STREXB(&_val, val));
        }

        return status;
    }
    
    T   
    get(void)
    {
        T result;
        if constexpr (std::is_same_v<T, int> || 
                      std::is_same_v<T, uint32_t>)
        {
            result = static_cast<T>(_LDREX(&_val));
        }
        else if constexpr (std::is_same_v<T, short> || 
                           std::is_same_v<T, uint16_t>)
        {
            result = static_cast<T>(_LDREXH(&_val));
        }
        else if constexpr (std::is_same_v<T, char> || 
                           std::is_same_v<T, uint8_t> ||
                           std::is_same_v<T, bool>)
        {
            result = static_cast<T>(_LDREXB(&_val));
        }
        return result;
    }
};


END_NAMESPACE

#endif