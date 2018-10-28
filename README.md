# Overview

This repo contains code for the "TensorFlow for poets 2" series of codelabs.

This repo contains simplified and trimmed down version of tensorflow's example image classification apps.

The `scripts` directory contains helpers for the codelab. Some of these come from the main TensorFlow repository, and are included here so you can use them without also downloading the main TensorFlow repo (they are not part of the TensorFlow `pip` installation).

# Requirements

## Install TensorFlow

> pip install --upgrade "tensorflow==1.7.*"

# Clone the Repo


# 3. See the training images

- Go to tf_files/tactile_photos. There will be a folder with each category of the training model.

# Instructions for Windows

## Start tensorboard
- run one cmd with
"tensorboard --logdir tf_files/training_summaries --host=127.0.0.1"
 for logging.

## Configure Mobilenet

- Then run another cmd with this commands:

- `set IMAGE_SIZE=224`
- `set ARCHITECTURE="mobilenet_0.50_%IMAGE_SIZE%"`
`
- `python -m scripts.retrain --bottleneck_dir=tf_files/bottlenecks --model_dir=tf_files/models/ --how_many_training_steps 8000 --learning_rate 0.005 --summaries_dir=tf_files/training_summaries/"%ARCHITECTURE%" --output_graph=tf_files/retrained_graph.pb --output_labels=tf_files/retrained_labels.txt --architecture="%ARCHITECTURE%" --image_dir=tf_files/tactile_photos`

modify summaries_dir for project name
-- decrease --learning_rate for more accuracy
-- increase --how_many_training_steps for more accuracy

- Distortions (for better or worse training accuracy) 

    `--random_crop`

    `--random_scale`

    `--random_brightness`(start with values from 5 to 10)

    `--flip_left_right (flips images horizontally at random)`

`--print_misclassified_test_images`(tests misclassified images at the end)

- see reporting in localhost:6006

## Classifying an image

`python -m scripts.label_image --graph=tf_files/retrained_graph.pb --image=tf_files/tactile_photos/Positive/Positive00001.jpg`

`python -m scripts.label_image --graph=tf_files/retrained_graph.pb --image=tf_files/tactile_photos/Negative/Negative00001.jpg`

* testing 

    `python -m scripts.label_image --graph=tf_files/retrained_graph.pb --image=tf_files/tests/Positive00001.jpg`

change --image param for your image

# Tensorflow Image Classifier

This is the code for 'Image Classifier in TensorFlow in 5 Min on [YouTube](https://youtu.be/QfNvhPx5Px8). Use this [CodeLab](https://codelabs.developers.google.com/codelabs/tensorflow-for-poets/?utm_campaign=chrome_series_machinelearning_063016&utm_source=gdev&utm_medium=yt-desc#0) by Google as a guide. Also this [tutorial](https://www.tensorflow.org/versions/r0.9/how_tos/image_retraining/index.html) is quite helpful.

## Requirements

* [docker](https://www.docker.com/products/docker-toolbox)

## Usage 

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
moto (score = 0.88331)
car (score = 0.11669)
```

Use an absolute file path for classifier and images because the script dos not support relative path (volume mounting)

# The Challenge

Make your own classifier for scientists, then post a clone of this repo with your retrained model in it. (you can name it retrained_graph.pb and it will be around 80 MB. If it's too big for GitHub, upload it to DropBox and post the link to it in your README)

# Credits

Credit goes to [Xblaster](https://github.com/xblaster) for the majority of this code. I've merely created a wrapper. 



