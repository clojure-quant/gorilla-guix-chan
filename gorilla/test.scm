(define-module (gorilla test))

(use-modules 
  (ice-9 pretty-print)  
  (gnu)  
  (guix gexp)
  (gnu services base)
  (gnu packages finance)  ; trezord-udev-rules
  
  ; packages
  (gorilla packages bongotrott)
  (gorilla packages hello22)
  

  ; util
  (gorilla util) 

  ; this files cannot be tested here. they use non-guix stuff.
  ;(nonguix build-system binary)
  ;(gorilla packages babashka) ; non-guix binary build
  ;(gorilla packages vscode)  ; non-guix binary build



)

; #:use-module (gorilla services special-files)

(display "gorilla test loaded!")



