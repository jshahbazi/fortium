module fortium
    !Fortran bindings for the nanomsg v0.4 sockets library (https://github.com/nanomsg/nanomsg)
    !"nanomsg" is licensed under MIT/X11 license and is a trademark of 250bpm s.r.o.
    !
    !nanofort bindings for nanomsg - MIT License (MIT)
    !See LICENSE file for more details    
    !Copyright (c) 2014 John N. Shahbazian
    !https://github.com/jshahbazi/nanofort

    use iso_c_binding 
    
    interface     
    
        !----------------------------
        !core.h
    
        integer(c_size_t) function sodium_init() bind(c,name="sodium_init")
            use iso_c_binding
        end function sodium_init
        
        !----------------------------
        !crypt_auth.h
    
        integer(c_size_t) function crypto_auth_bytes() bind(c,name="crypto_auth_bytes")
            use iso_c_binding
        end function crypto_auth_bytes
    
        integer(c_size_t) function crypto_auth_keybytes() bind(c,name="crypto_auth_keybytes")
            use iso_c_binding
        end function crypto_auth_keybytes
        
        type(c_ptr) function crypto_auth_primitive() bind(c,name="crypto_auth_primitive")
            use iso_c_binding
        end function crypto_auth_primitive        
    
        integer(c_int) function crypto_auth(out, in, inlen, k) bind(c,name="crypto_auth")
            use iso_c_binding
            type(c_ptr), value :: out                  !unsigned char *out
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value, intent(in) :: k        !const unsigned char *in
        end function crypto_auth

        integer(c_int) function crypto_auth_verify(h, in, inlen, k) bind(c,name="crypto_auth_verify")
            use iso_c_binding
            type(c_ptr), value, intent(in) :: h        !const unsigned char *h
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value, intent(in) :: k        !const unsigned char *k
        end function crypto_auth_verify
        
        !-----------------------------
        !crypto_hash_sha512.h        
        
        integer(c_size_t) function crypto_hash_sha512_bytes() bind(c,name="crypto_hash_sha512_bytes")
            use iso_c_binding
        end function crypto_hash_sha512_bytes         

        integer(c_int) function crypto_hash_sha512(out, in, inlen) bind(c,name="crypto_hash_sha512")
            use iso_c_binding
            type(c_ptr), value :: out                  !unsigned char *out
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
        end function crypto_hash_sha512

        integer(c_int) function crypto_hash_sha512_init(state) bind(c,name="crypto_hash_sha512_init")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_hash_sha512_state *state
        end function crypto_hash_sha512_init 

        integer(c_int) function crypto_hash_sha512_update(state, in, inlen) bind(c,name="crypto_hash_sha512_update")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_hash_sha512_state *state
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inle
        end function crypto_hash_sha512_update
        
        integer(c_int) function crypto_hash_sha512_final(state, out) bind(c,name="crypto_hash_sha512_final")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_hash_sha512_state *state
            type(c_ptr), value :: out                  !unsigned char *out
        end function crypto_hash_sha512_final        
        
        !-----------------------------
        !crypto_auth_hmacsha512.h
        
        integer(c_size_t) function crypto_auth_hmacsha512_bytes() bind(c,name="crypto_auth_hmacsha512_bytes")
            use iso_c_binding
        end function crypto_auth_hmacsha512_bytes       
        
        integer(c_size_t) function crypto_auth_hmacsha512_keybytes() bind(c,name="crypto_auth_hmacsha512_keybytes")
            use iso_c_binding
        end function crypto_auth_hmacsha512_keybytes          
        
        integer(c_int) function crypto_auth_hmacsha512(out, in, inlen, k) bind(c,name="crypto_auth_hmacsha512")
            use iso_c_binding
            type(c_ptr), value :: out                  !unsigned char *out
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value, intent(in) :: k        !const unsigned char *k
        end function crypto_auth_hmacsha512
        
        integer(c_int) function crypto_auth_hmacsha512_verify(h, in, inlen, k) bind(c,name="crypto_auth_hmacsha512_verify")
            use iso_c_binding
            type(c_ptr), value, intent(in) :: h        !const unsigned char *h
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value, intent(in) :: k        !const unsigned char *k
        end function crypto_auth_hmacsha512_verify   
        
        integer(c_int) function crypto_auth_hmacsha512_init(state, key, keylen) bind(c,name="crypto_auth_hmacsha512_init")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512_state *state
            type(c_ptr), value, intent(in) :: key      !const unsigned char *key
            integer(c_size_t), value :: keylen         !size_t keylen
        end function crypto_auth_hmacsha512_init        
        
        integer(c_int) function crypto_auth_hmacsha512_update(state, in, inlen) bind(c,name="crypto_auth_hmacsha512_update")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512_state *state
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
        end function crypto_auth_hmacsha512_update
        
        integer(c_int) function crypto_auth_hmacsha512_final(state, out) bind(c,name="crypto_auth_hmacsha512_final")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512_state *state
            type(c_ptr), value :: out                  !unsigned char *out
        end function crypto_auth_hmacsha512_final   
        
        !-----------------------------
        !crypto_auth_hmacsha512256.h        
        
        integer(c_size_t) function crypto_auth_hmacsha512256_bytes() bind(c,name="crypto_auth_hmacsha512256_bytes")
            use iso_c_binding
        end function crypto_auth_hmacsha512256_bytes       
        
        integer(c_size_t) function crypto_auth_hmacsha512256_keybytes() bind(c,name="crypto_auth_hmacsha512256_keybytes")
            use iso_c_binding
        end function crypto_auth_hmacsha512256_keybytes        

        integer(c_int) function crypto_auth_hmacsha512256(out, in, inlen, k) bind(c,name="crypto_auth_hmacsha512256")
            use iso_c_binding
            type(c_ptr),value :: out                  !unsigned char *out
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value :: k                    !const unsigned char *k
        end function crypto_auth_hmacsha512256
        
        integer(c_int) function crypto_auth_hmacsha512256_verify(h, in, inlen, k) bind(c,name="crypto_auth_hmacsha512256_verify")
            use iso_c_binding
            type(c_ptr), value, intent(in) :: h        !const unsigned char *h
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
            type(c_ptr), value, intent(in) :: k        !const unsigned char *k
        end function crypto_auth_hmacsha512256_verify   
        
        integer(c_int) function crypto_auth_hmacsha512256_init(state, key, keylen) bind(c,name="crypto_auth_hmacsha512256_init")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512256_state *state
            type(c_ptr), value, intent(in) :: key      !const unsigned char *key
            integer(c_size_t), value :: keylen         !size_t keylen
        end function crypto_auth_hmacsha512256_init        
        
        integer(c_int) function crypto_auth_hmacsha512256_update(state, in, inlen) bind(c,name="crypto_auth_hmacsha512256_update")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512256_state *state
            type(c_ptr), value, intent(in) :: in       !const unsigned char *in
            integer(c_long_long), value :: inlen       !unsigned long long inlen
        end function crypto_auth_hmacsha512256_update
        
        integer(c_int) function crypto_auth_hmacsha512256_final(state, out) bind(c,name="crypto_auth_hmacsha512256_final")
            use iso_c_binding
            type(c_ptr), value :: state                !crypto_auth_hmacsha512256_state *state
            type(c_ptr), value :: out                  !unsigned char *out
        end function crypto_auth_hmacsha512256_final   
        
        
      integer(c_int) function strlen(s) bind(c, name='strlen')
        use iso_c_binding
        implicit none
        !----
        type(c_ptr), intent(in), value :: s
      end function strlen
        
        !c_memcpy - same as the C function memcpy
        type(c_ptr) function c_memcpy(dest, src, n) bind(c,name="memcpy")
          use iso_c_binding
      
          type(c_ptr), value, intent(in) :: dest
          type(c_ptr), value, intent(in) :: src
          integer(c_size_t), value, intent(in) :: n
        end function c_memcpy         
        
        
    end interface
    
end module fortium