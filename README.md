# skflow

Simplified interface for TensorFlow (mimicking Scikit Learn) for Deep Learning on Docker.

Run,

```bash
vagrant@vagrant-ubuntu-wily-64:~$ docker run -it seyyah/gskflow
root@f350dc5a64ab:~# ipython
```

Test,

```python
import skflow
from sklearn import datasets, metrics

iris = datasets.load_iris()
classifier = skflow.TensorFlowLinearClassifier(n_classes=3)
classifier.fit(iris.data, iris.target)
score = metrics.accuracy_score(iris.target, classifier.predict(iris.data))
print("Accuracy: %f" % score)
```

# How to

```bash
tensorflow$ _ vm ssh
vagrant@vagrant-ubuntu-wily-64:~$ docker run -it b.gcr.io/tensorflow/tensorflow
root@bdee1806db82:~# apt-get update
root@bdee1806db82:~# apt-get install python-numpy python-scipy libatlas-base-dev gfortran python-pip python-dev git
root@bdee1806db82:~# pip install git+git://github.com/tensorflow/skflow.git
root@bdee1806db82:~# exit
vagrant@vagrant-ubuntu-wily-64:~$ docker commit -m "Skflow is ready" -a "seyyah" bdee1806db82 seyyah/skflow:v1
58f3bb58651aed08a6f426769a3cba896933ed26618e4b8526482ea7b20b08e1
vagrant@vagrant-ubuntu-wily-64:~$ docker images
REPOSITORY                       TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
seyyah/skflow                    v1                  58f3bb58651a        17 seconds ago      816.4 MB
b.gcr.io/tensorflow/tensorflow   latest              4ac133eed955        6 weeks ago         653.1 MB
vagrant@vagrant-ubuntu-wily-64:~$ docker login
Username: 
Password: 
Email: 
WARNING: login credentials saved in /home/vagrant/.docker/config.json
Login Succeeded
vagrant@vagrant-ubuntu-wily-64:~$ docker push seyyah/skflow
The push refers to a repository [docker.io/seyyah/skflow] (len: 1)
58f3bb58651a: Pushing [======================>                            ] 74.76 MB/163.4 MB
```
