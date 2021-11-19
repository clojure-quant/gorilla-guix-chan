# gorilla guix chan

Gorilla is a Guix channel providing clojure related packages and services.

# Getting Started

Gorilla can be installed as a [Guix channel](https://www.gnu.org/software/guix/manual/en/html_node/Channels.html).

To do so, add it to `~/.config/guix/channels.scm`

```
  (cons*
    (channel
      (name 'chur)
      (url "https://github.com/pink-gorilla/gorilla-guix-chan"))
    %default-channels)
```

Then run *guix pull*
