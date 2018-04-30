FROM martinjohn/x-template

USER root

RUN apt-get update \
 && apt-get install -y \
            firefox  \
            libcanberra-gtk3-0 \
            vlc

USER $user

ENTRYPOINT "firefox"
