(define-module (gorilla services special-files)
   #:use-module (gnu)
   #:use-module (gnu packages bash) 
   #:use-module (gnu packages fish) 
   #:export (service-bin-links))

(define service-bin-links
   (service special-files-service-type
      `(("/bin/bash" ,(file-append bash "/bin/sh"))
        ("/bin/sh" ,(file-append bash "/bin/sh"))
        ("/bin/fish" ,(file-append bash "/bin/fish"))
        ("/usr/bin/env" ,(file-append coreutils "/bin/env")))))
     
     
; (define service-bin-links
;   (extra-special-file "/usr/bin/env"
;      (file-append coreutils "/bin/env")))