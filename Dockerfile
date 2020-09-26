FROM tiagopeixoto/graph-tool:latest
COPY mirrorlist /etc/pacman.d/mirrorlist
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm jupyterlab base-devel jdk8-openjdk python-pip
COPY apache-spark /home/user/apache-spark
RUN cd /home/user/ && chown user -R apache-spark && cd apache-spark && sudo -u user makepkg -s && ls && pacman -U --noconfirm *.pkg.tar.*
RUN pip install pyspark
CMD jupyter lab --ip 0.0.0.0
