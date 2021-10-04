(define-module (gorilla config special-files))

(use-modules
 (srfi srfi-1)
 (gnu)
 (gnu system locale)
 (gnu services networking)
 (gnu services dbus)
 (gnu services desktop)
 (gnu services ssh)
 (gnu packages base)            ; for 'canonical-package'
)


(define-public service-special-files
(service special-files-service-type
               ;; Using 'canonical-package' as bash and coreutils
               ;; canonical packages are already a part of
               ;; '%base-packages'.
               `(("/bin/sh"
                  ,(file-append (canonical-package
                                 (guix-package bash bash))
                                "/bin/bash"))
                 ("/bin/bash"
                  ,(file-append (canonical-package
                                 (guix-package bash bash))
                                "/bin/bash"))
                 ("/usr/bin/env"
                  ,(file-append (canonical-package
                                 (guix-package base coreutils))
                                "/bin/env")))))