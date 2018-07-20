# firefox
Desktop version.

I run with something like

    docker run -it \
               --rm \
               --net host \
               --memory 512mb \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -v /etc/machine-id:/etc/machine-id:ro \
               -v /dev/shm:/dev/shm \
               -v ${PWD}/firefox:/home/alpine/.mozilla \
               -e DISPLAY=unix$DISPLAY \
               --device /dev/snd \
               --device /dev/dri \
               --name firefox \
               firefox https://www.youtube.com/html5
