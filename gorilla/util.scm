(define-module (gorilla util) 
  #:use-module (guix packages)
  #:use-module (guix profiles)
  #:use-module (gnu packages)
  #:export (->manifests
            ->packages
             ->packages-output
            ))

(define (->packages specs)
    (map specification->package specs))

 (define (->packages-output specs)
    (map specification->package+output specs))




(define (->manifests specs)
    (packages->manifest (->packages specs)))
    
    

    
    