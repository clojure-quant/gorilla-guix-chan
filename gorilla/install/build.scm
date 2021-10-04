(define-module (gorilla install build)
  #:export (my-build
            ))

(define my-build
  (list 
    "coreutils" ; glibcc gcc bash 
       ;"direnv" google this
      
        ;"idutils"
        ; "guile" 
        "hello"
        ;"nss-certs" ; tls certificates
       
        "make"
        "gcc-toolchain"
  ))

  