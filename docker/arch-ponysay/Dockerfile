FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S git vim sudo ponysay --noconfirm

ENTRYPOINT ["/usr/bin/ponysay"]
CMD ["Hey, netology"]
