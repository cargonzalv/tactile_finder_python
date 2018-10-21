FROM tensorflow/tensorflow:latest-devel

MAINTAINER Carlos González "ce.gonzalez13@uniandes.edu.co"

RUN pip install tensorflowjs
WORKDIR /tensorflow

ADD src .
ADD scripts examples/image_retraining
CMD cd /tensorflow