# Overview

This repo contains a working Machine Learning model for identifying Tactile Graphic friendly images. Running with a simplified and trimmed down version of tensorflow's example image classification apps, based on the "Tensorflow for poets 2" series of codelabs

For more information you can use this [CodeLab](https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/?utm_campaign=chrome_series_machinelearning_063016&utm_source=gdev&utm_medium=yt-desc#0) by Google as a guide. Also this [tutorial](https://www.tensorflow.org/versions/r0.9/how_tos/image_retraining/index.html) is quite helpful.


The `scripts` directory contains helpers for the codelab. Some of these come from the main TensorFlow repository, and are included here so you can use them without also downloading the main TensorFlow repo (they are not part of the TensorFlow `pip` installation).

# Requirements

* [docker](https://www.docker.com/products/docker-toolbox)

# Usage 

## Clone the Repo

## Put the training images

- Go to tf_files/tactile_photos. There needs to be a folder with each category of the training model. We did it with a "Positive" folder and a "Negative" one.

You just need to make a "classifier" directory with a directory "data" inside it with all your images
For example
```
 [any_path]/my_own_classifier/
 [any_path]/my_own_classifier/data
 [any_path]/my_own_classifier/data/car
 [any_path]/my_own_classifier/data/moto
 [any_path]/my_own_classifier/data/bus
```
 and then put your image on it. 
 This "classifier" directory will have your samples but also trained classifier after execution of "train.sh". 

## Train process
 
Just type
```
 ./train.sh [any_path]/my_own_classifier
``` 
And it will do anything for you !

## Guess process

Just type for a single guess
```
 ./guess.sh [any_path]/my_own_classifier /yourfile.jpg
```

To guess an entire directory
```
./guessDir.sh [any_path]/classifier [any_path]/srcDir [any_path]/destDir
```

## Example of result
```
# ./guess.sh /synced/tensor-lib/moto-classifier/ /synced/imagesToTest/moto21.jpg
Positive (score = 0.88331)
Negative (score = 0.11669)
```

Use an absolute file path for classifier and images because the script dos not support relative path (volume mounting)



