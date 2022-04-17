## x11-novnc-docker

This container runs:

* Xvfb - X11 in a virtual framebuffer
* x11vnc - A VNC server that scrapes the above X11 server
* [noNVC](https://kanaka.github.io/noVNC/) - A HTML5 canvas vnc viewer
* Fluxbox - a small window manager

This is a [trusted build](https://registry.hub.docker.com/u/aiyijing/x11-novnc-docker)
on the Docker Hub.

## Run It

    docker run --rm -p 8080:8080 aiyijing/x11-novnc-docker:latest
    xdg-open http://localhost:8080

## Modifying

This is a base image. You should fork or use this base image to run your own
wine programs?

## Issues

* Wine could be optimized a bit
* Fluxbox could be skinned or reduced
* hello world



