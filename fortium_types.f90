module fortium_types
    !Fortran bindings for the nanomsg v0.4 sockets library (https://github.com/nanomsg/nanomsg)
    !"nanomsg" is licensed under MIT/X11 license and is a trademark of 250bpm s.r.o.
    !
    !nanofort bindings for nanomsg - MIT License (MIT)
    !See LICENSE file for more details    
    !Copyright (c) 2014 John N. Shahbazian
    !https://github.com/jshahbazi/nanofort
    
    use iso_c_binding
    

    
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