FROM tensorflow/tensorflow:latest-devel

MAINTAINER Carlos González "ce.gonzalez13@uniandes.edu.co"

RUN pip install --upgrade pip
RUN pip install tensorflowjs
WORKDIR /tensorflow

RUN git pull

ADD src .
ADD scripts /tensorflow/examples/image_retraining
CMD cd /tensorflow