FROM martinjohn/x-template:alpine

USER root

RUN apk update \
 && apk add --no-cache \
            firefox-esr \
            libcanberra-gtk3 \
            ttf-freefont \
            ffmpeg-libs

USER $user

ENTRYPOINT ["firefox"]
