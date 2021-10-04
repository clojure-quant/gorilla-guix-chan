# Channels (repositories)

A channel is a git repo that defines packages in scheme files that can be built.
https://gitlab.com/pjotrp/guix-notes/-/blob/master/CHANNELS.org

guix describe                shows installed repositories  
cat  ~/.config/guix/channels.scm             config file for custom channels
cat  ~/.config/guix/current/manifest         shows all channels

By default guix pull
reads ~/.config/guix/channels.scm; with -C it can take channel specifications from a user-supplied file 

## CHANNELS

- Nonguix clojure steam broadcom installer nonfree https://gitlab.com/nonguix/nonguix
  https://gitlab.com/nonguix/nonguix/-/tree/master/
- Nonfree: wifi driver, qemu, steem https://www.rohleder.de/gitweb/?p=guix.git;a=blob;f=mroh/guix/install.scm;hb=HEAD
- https://github.com/guix-science/guix-science
- BABASHKA https://github.com/giuliano108/guix-packages/blob/master/packages/babashka.scm
- pantherX: https://channels.pantherx.org/pantherx-extra.git/tree/.guix-channel  
- Bio informatics https://github.com/pjotrp/guix-notes/blob/master/BIOINFORMATICS.org
- Gaming https://gitlab.com/guix-gaming-channels
- RStudio https://github.com/leibniz-psychology/guix-zpid
- https://github.com/UMCUGenetics/guix-additions/tree/master/umcu/packages
- https://gitlab.com/genenetwork/guix-bioinformatics r shiny cran java node shell python2 python3 machine learning tensor flow mysql numpy services: shiny
- Guix past channel: old Python versions https://gitlab.inria.fr/guix-hpc/guix-past
- https://gitlab.inria.fr/guix-hpc/guix-hpc-non-free cuda mkl 
- https://gitlab.inria.fr/guix-hpc/guix-hpc
- https://gitlab.com/mbakke/guix-chromium






https://github.com/aartaka/guix-config/blob/master/dev-manifest.scm
