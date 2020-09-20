FROM tiagopeixoto/graph-tool:latest
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm  jupyterlab
CMD jupyter lab --ip 0.0.0.0
