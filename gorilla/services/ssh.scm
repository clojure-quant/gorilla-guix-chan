(define-module (gorilla services ssh)
    #:use-module (guix) ; local-file
    #:use-module (gnu services)
    #:use-module (gnu services ssh)
    #:use-module (gnu packages ssh) ; openssh-sans-x
    #:export (gorilla-ssh-service))

(define (gorilla-ssh-service)
    (service openssh-service-type
        (openssh-configuration
            (openssh openssh-sans-x)
            (password-authentication? #false)
                (authorized-keys
                    `(("pink" ,(local-file "../../flo5.pub")) ; relative this file
                      ("root" ,(local-file "../../flo5.pub")))))))