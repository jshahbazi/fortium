module fortium_defines
    use iso_c_binding
    
    
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