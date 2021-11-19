(define-module (gorilla test))

(use-modules 
  (ice-9 pretty-print)  
  (gnu)  
  (guix gexp)
  (gnu services base)
  (gnu packages finance)  ; trezord-udev-rules
  
;; install 
  (gorilla install build)
  (gorilla install chat)
  (gorilla install clojure)
  (gorilla install crypto)
  (gorilla install desktop)
  (gorilla install emacs)
  (gorilla install fonts)
  (gorilla install python)
  (gorilla install r)
  (gorilla install tools)

  ; packages
  (gorilla packages bongotrott)
  (gorilla packages hello22)
  
  ; config
  (gorilla config cron)
  (gorilla config ssh)

  ; util
  (gorilla util) 

  ; services
  (gorilla services special-files)
  (gorilla services trezord)
  (gorilla services trezord-debug)

  ; this files cannot be tested here. they use non-guix stuff.
  ;(nonguix build-system binary)
  ;(gorilla packages babashka) ; non-guix binary build
  ;(gorilla packages vscode)  ; non-guix binary build



)

; #:use-module (gorilla services special-files)

;(print "hello, test!")

(pretty-print "guix-repo test started.")

(pretty-print "build dependencies: " )
(pretty-print my-build)

(pretty-print "chat dependencies: " )
(pretty-print my-chat)

(pretty-print "clojure dependencies: " )
(pretty-print my-clojure)

(pretty-print "crypto dependencies: " )
(pretty-print my-crypto)

(pretty-print "desktop dependencies: " )
(pretty-print my-desktop)

(pretty-print "emacs dependencies: " )
(pretty-print my-emacs)

(pretty-print "fonts dependencies: " )
(pretty-print my-fonts)

(pretty-print "python dependencies: " )
(pretty-print my-python)

(pretty-print "python dependencies: " )
(pretty-print my-python)

(pretty-print "r dependencies: " )
(pretty-print my-r)

(pretty-print "tools dependencies: " )
(pretty-print my-tools)



