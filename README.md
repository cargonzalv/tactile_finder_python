# Overview

This repo contains a working Machine Learning model for identifying Tactile Graphic friendly images. Running with a simplified and trimmed down version of tensorflow's example image classification apps, based on the "Tensorflow for poets 2" series of codelabs

For more information you can use this [CodeLab](https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/?utm_campaign=chrome_series_machinelearning_063016&utm_source=gdev&utm_medium=yt-desc#0) by Google as a guide. Also this [tutorial](https://www.tensorflow.org/versions/r0.9/how_tos/image_retraining/index.html) is quite helpful.


The `scripts` directory contains helpers for the codelab. Some of these come from the main TensorFlow repository, and are included here so you can use them without also downloading the main TensorFlow repo (they are not part of the TensorFlow `pip` installation).

# Requirements

* [docker](https://www.docker.com/products/docker-toolbox)

# Usage 

## Clone the Repo

## Put the training images

You just need to add your images to /docker_container/tf_files/tactile_photos, separating them in different folders for every category
you want to train.
For example
```
 docker/container/tf_files/tactile_photos/Positive
 docker/container/tf_files/tactile_photos/Negative
 docker/container/tf_files/tactile_photos/Neutral

``` 
 This "tf_files" directory will have your samples but also trained classifier after execution of "train.sh". 

## Train process
 
Just type
```
 ./train.sh [training-steps]
``` 
where the training-steps parameter is how much precision you want from the model! A recommended number is 4000.

This will train any classification for you !

## Guess process

Just type for a single guess
```
 ./guess.sh [path-to-your-file]/yourfile.jpg
```

To guess an entire directory
```
./guessDir.sh [any_path]/srcDir [any_path]/destDir
```

## Example of result
```
# ./guess.sh /path-to-file/moto21.jpg
Positive (score = 0.88331)
Negative (score = 0.11669)
```


