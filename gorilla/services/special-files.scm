(define-module (gorilla services special-files)
   #:use-module (gnu)
   #:use-module (gnu packages bash) 
   #:export (service-special-files
             service-link-env )
)


(define service-special-files
   (service special-files-service-type
      `(("/bin/bash" ,(file-append bash "/bin/sh"))
        ("/bin/sh" ,(file-append bash "/bin/sh"))
        ("/usr/bin/env" ,(file-append coreutils "/bin/env")))))
     
     
(define service-link-env     
   (extra-special-file "/usr/bin/env"
      (file-append coreutils "/bin/env")))