FROM tiagopeixoto/graph-tool:latest
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN pacman -Syu --noconfirm jupyterlab base-devel jdk8-openjdk python-pip
COPY apache-spark /home/user/apache-spark
RUN cd /home/user/ && chown user -R apache-spark && cd apache-spark && sudo -u user makepkg -s && pacman -U --noconfirm *.pkg.tar.*
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN sudo -u user mkdir /home/user/work
USER user
WORKDIR /home/user/work
CMD jupyter lab --ip 0.0.0.0
