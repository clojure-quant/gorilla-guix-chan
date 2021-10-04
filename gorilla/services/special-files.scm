(define-module (gorilla service special-files)
   #:use-module (gnu)
   #:use-module (gnu packages bash) 
   #:export (service-special-files)
)


(define service-special-files
   (service special-files-service-type
      `(("/bin/bash" ,(file-append bash "/bin/sh"))
        ("/bin/sh" ,(file-append bash "/bin/sh"))
        ("/usr/bin/env" ,(file-append coreutils "/bin/env")))))

