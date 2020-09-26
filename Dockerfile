FROM tiagopeixoto/graph-tool:latest
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm  jupyterlab base-devel git
CMD jupyter lab --ip 0.0.0.0
