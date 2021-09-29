(define-module (gorilla packages myscript)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system trivial)
  #:use-module (gnu packages bash))

;; See <http://lists.gnu.org/archive/html/help-guix/2016-08/msg00101.html>.

; https://github.com/alezost/guix-config/blob/master/misc/shell-script-example/guix.scm


(define-public myscript
  (package
    (name "myscript")
    (version "0.2")
    (source (local-file (string-append (dirname (current-filename))
                                       "/" "myscript2")))
    (build-system trivial-build-system)
    (arguments
     `(#:modules ((guix build utils))
       #:builder
       (begin
         (use-modules (guix build utils))
         (let* ((bin-dir  (string-append %output "/bin"))
                (bin-file (string-append bin-dir "/" ,"myscript2"))
                (bash-bin (string-append (assoc-ref %build-inputs "bash")
                                         "/bin")))
           (mkdir-p bin-dir)
           (copy-file (assoc-ref %build-inputs "source") bin-file)
           (patch-shebang bin-file (list bash-bin))
           (chmod bin-file #o555)))))
    (inputs `(("bash" ,bash)))
    (synopsis "bla bla")
    (description "More verbose bla bla")
    (home-page  "https://github.com/babashka/babashka")
    (license license:epl1.0)))

    myscript

