FROM b.gcr.io/tensorflow/tensorflow-full:latest
MAINTAINER seyyah <seyyah@bil.omu.edu.tr>
RUN apt-get update
RUN apt-get install -y python-numpy python-scipy libatlas-base-dev gfortran python-pip python-dev git mc vim
RUN pip install git+git://github.com/tensorflow/skflow.git
RUN mkdir ~/works
