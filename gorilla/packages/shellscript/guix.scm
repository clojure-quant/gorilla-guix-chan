;; See <http://lists.gnu.org/archive/html/help-guix/2016-08/msg00101.html>.

; https://github.com/alezost/guix-config/blob/master/misc/shell-script-example/guix.scm

(use-modules
 (guix gexp)
 (guix packages)
 ;; (guix licenses)
 (guix build-system trivial)
 (gnu packages bash))

(let ((script-name "my-script"))
  (package
    (name script-name)
    (version "0.1")
    (source (local-file (string-append (dirname (current-filename))
                                       "/" script-name)))
    (build-system trivial-build-system)
    (arguments
     `(#:modules ((guix build utils))
       #:builder
       (begin
         (use-modules (guix build utils))
         (let* ((bin-dir  (string-append %output "/bin"))
                (bin-file (string-append bin-dir "/" ,script-name))
                (bash-bin (string-append (assoc-ref %build-inputs "bash")
                                         "/bin")))
           (mkdir-p bin-dir)
           (copy-file (assoc-ref %build-inputs "source") bin-file)
           (patch-shebang bin-file (list bash-bin))
           (chmod bin-file #o555)))))
    (inputs `(("bash" ,bash)))
    (home-page #f)
    (synopsis "bla bla")
    (description "More verbose bla bla")
    (license #f)))

