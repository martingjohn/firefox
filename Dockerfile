FROM martinjohn/x-template:alpine

USER root

RUN apk update \
 && apk add --no-cache \
            firefox \
            libcanberra-gtk3 \
            ttf-freefont

USER $user

ENTRYPOINT "firefox"
