# graph-tool
Build repository for pranavdahiya/graph-tool on docker hub

This image will contain all the python modules and arch packages necessary for my workflow on top of whats already installed in tiagopeixoto/graph-tool. Other's who require the same packages can use this image, or you can use my Dockerfile as a template to install other packages you need.

Packages installed:
* base-devel
* pip
* jupyterlab
* pyspark
* multiprocess
* dill
* newspaper3k

NOTE: mirrorlist includes arch mirrors geographically closer to me. apache-spark/ is the same as the aur package but with a closer mirror to me and updated for v3.0.1
