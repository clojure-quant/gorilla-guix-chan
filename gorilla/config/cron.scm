(define-module (gorilla config cron)
#:use-module (gnu services mcron)
#:use-module (gnu packages linux)
#:use-module (guix gexp) ; #~
#:export (%guix-maintenance-jobs
          ;%guix-temproots
          ;%tmp-tmpfs
          ))

; stolen from:
; https://git.sr.ht/~efraim/guix-config/tree/master/item/config/filesystems.scm


; #~ means ‘[begin a] gexp’, short for G-Expression

(define %guix-maintenance-jobs
(list
    ;; gc (remove packages older than 2 months, keep at least 500G free), pull and update every day at 03:05
    #~(job "5 3 * * *"            ;Vixie cron syntax
       "guix gc --optimize -d 2m && guix gc -F 300G && guix pull"))
  )