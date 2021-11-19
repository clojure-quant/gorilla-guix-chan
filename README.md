#+TITLE: gorilla guix chan

Gorillar is a Guix channel providing clojure related packages and services.

* Getting Started

Gorilla can be installed as a [[https://www.gnu.org/software/guix/manual/en/html_node/Channels.html][Guix channel]].

To do so, add it to =~/.config/guix/channels.scm=: 
#+BEGIN_SRC scheme
  (cons*
    (channel
      (name 'chur)
      (url "https://github.com/pink-gorilla/gorilla-guix-chan"))
    %default-channels)
#+END_SRC

Then run =guix pull=.
