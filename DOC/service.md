


custom services:

https://github.com/skeeto/endlessh
https://notabug.org/jbranso/linode-guix-system-configuration/src/master/opensmtpd.scm

  (service openssh-service-type
                       (openssh-configuration
                        (port-number 2222)
                        (permit-root-login #f)
                        (public-key-authentication? #t)))
                        
              (service docker-service-type)

              (service libvirt-service-type
                       (libvirt-configuration
                        (unix-sock-group "libvirt")))

              (service virtlog-service-type)

              (service rsync-service-type)

               (service iptables-service-type
                       (iptables-configuration
                        (ipv4-rules (plain-file "iptables.rules" "*filter
:INPUT DROP [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -i lo -j ACCEPT
-A INPUT -i wlp4s0 -p tcp -m tcp -s 10.1.3.0/24 --dport 2242 -j ACCEPT
-A INPUT -i wlp4s0 -p tcp -m tcp -s 10.1.3.0/24 --dport 8000:8099 -j ACCEPT
-A INPUT -i wwp0s20f0u6i12 -j DROP
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
COMMIT
"))
                        ;; IPV4EVA!
                        (ipv6-rules (plain-file "ip6tables.rules" "*filter 
:INPUT DROP
:FORWARD ACCEPT
:OUTPUT ACCEPT
-A INPUT -j REJECT --reject-with icmp6-port-unreachable
COMMIT
"))))
              ;; these are handy for random scripts that have hardcoded shebangs, ie. #!/bin/bash
              (service special-files-service-type
                       `(("/bin/bash"
                          ,(file-append bash "/bin/bash"))
                         ("/bin/sh"
                          ,(file-append bash "/bin/sh"))
                         ("/usr/bin/env"
                          ,(file-append coreutils "/bin/env"))))

              %desktop-services))