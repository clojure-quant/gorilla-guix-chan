(define-module (gorilla install clojure)
  #:export (my-clojure
            ))

(define my-clojure
  (list 
  ;"icedtea"   ; open-jdk java
        ;"openjdk"
        ;(list "openjdk" "jdk" "doc" "out")
        ;"openjdk:doc"  ; doc output of openjdk - needed by cider/orchard
        "openjdk:jdk" ; having first openjdk does not work.s
        "fastjar" ; java "jar" app
        "java-qdox" 
        "java-swt"
        "clojure"   ; from gnu guix
        "rlwrap"
       
        "graphviz" ;  dependency graphs
      
       "node" ; v10, v14 is in development. brings node and npm
       ; "java-certs" ; why?
   ))
