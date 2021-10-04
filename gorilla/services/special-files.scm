(define-module (gorilla service special-files))

(use-modules
 (srfi srfi-1)
 (gnu)
 (gnu system locale)
 (gnu services networking)
 (gnu services dbus)
 (gnu services desktop)
 (gnu services ssh)
 (gnu packages base)            ; for 'canonical-package'
 (gnu packages bash)
)

(define-public service-special-files
   (service special-files-service-type
      `(("/bin/bash" ,(file-append bash "/bin/sh"))
        ("/bin/sh" ,(file-append bash "/bin/sh"))
        ("/usr/bin/env" ,(file-append coreutils "/bin/env")))))

