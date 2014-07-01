module fortium_types
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
    
    type, bind(c) :: crypto_hash_sha512_state
        integer(c_int64_t) :: state(8)
        integer(c_int64_t) :: count(2)
        character(len=128, kind=c_signed_char) :: buf
    end type crypto_hash_sha512_state
    
    type, bind(c) :: crypto_auth_hmacsha512_state
        type(crypto_hash_sha512_state) :: ictx
        type(crypto_hash_sha512_state) :: octx
    end type crypto_auth_hmacsha512_state
    
    type, bind(c) :: crypto_auth_hmacsha512256_state
        !typedef struct crypto_auth_hmacsha512_state crypto_auth_hmacsha512256_state;
        type(crypto_hash_sha512_state) :: ictx, octx        
    end type crypto_auth_hmacsha512256_state
    
    
end module fortium_types