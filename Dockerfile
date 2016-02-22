FROM seyyah/gskflow
MAINTAINER seyyah <seyyah@bil.omu.edu.tr>
RUN pip install --upgrade pip
RUN apt-get install -y python-nose g++ libopenblas-dev
RUN pip install Theano
RUN pip install keras
RUN cd ~/works && git clone https://gist.github.com/2620f764561eb7c6aecb.git
RUN mv ~/works/2620f764561eb7c6aecb ~/works/datasets
CMD cd ~/works/datasets
