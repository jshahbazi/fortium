module fortium_defines
    !Fortran bindings for libsodium - a P(ortable|ackageable) NaCl-based crypto library
    !(https://github.com/jedisct1/libsodium)
    !"libsodium" is licensed under the ISC license (http://en.wikipedia.org/wiki/ISC_license)
    !
    !fortium bindings for libsodium - MIT License (MIT)
    !See LICENSE file for more details 
    !Copyright (c) 2014 John N. Shahbazian
    !https://github.com/jshahbazi/fortium
    
    use iso_c_binding
    
    implicit none
        
    !-----------------------------
    !crypto_hash_sha512.h    
    
    integer(c_int64_t), parameter :: crypto_hash_sha512_BYTES = 64    
    
    !-----------------------------   
    !crypto_auth_hmacsha512.h    

    integer(c_int64_t), parameter :: crypto_auth_hmacsha512_BYTES = 64
    integer(c_int64_t), parameter :: crypto_auth_hmacsha512_KEYBYTES = 64

    !-----------------------------   
    !crypto_auth_hmacsha512256.h        
    
    character(len=*), parameter :: crypto_auth_PRIMITIVE = 'hmacsha512256'
    
    integer(c_int64_t), parameter :: crypto_auth_hmacsha512256_BYTES = 32
    integer(c_int64_t), parameter :: crypto_auth_hmacsha512256_KEYBYTES = 32
    integer(c_int64_t), parameter :: crypto_auth_BYTES = crypto_auth_hmacsha512256_BYTES
    integer(c_int64_t), parameter :: crypto_auth_KEYBYTES = crypto_auth_hmacsha512256_KEYBYTES    
    
    
end module fortium_defines