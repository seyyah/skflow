# skflow

Simplified interface for TensorFlow (mimicking Scikit Learn) for Deep Learning on Docker.

Run,

```bash
$ docker run seyyah/gskflow
gskflow$ ipython
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
