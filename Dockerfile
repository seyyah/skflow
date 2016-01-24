FROM b.gcr.io/tensorflow/tensorflow-full:latest
MAINTAINER seyyah <seyyah@bil.omu.edu.tr>
RUN apt-get update
RUN apt-get install -y python-numpy python-scipy libatlas-base-dev gfortran python-pip python-dev git mc vim
RUN pip install git+git://github.com/tensorflow/skflow.git
RUN mkdir ~/works
RUN cd ~/works && git clone https://gist.github.com/2620f764561eb7c6aecb.git
RUN mv ~/works/2620f764561eb7c6aecb ~/works/datasets
