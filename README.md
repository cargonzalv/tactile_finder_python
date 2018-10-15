# Overview

This repo contains code for the "TensorFlow for poets 2" series of codelabs.


This repo contains simplified and trimmed down version of tensorflow's example image classification apps.

The `scripts` directory contains helpers for the codelab. Some of these come from the main TensorFlow repository, and are included here so you can use them without also downloading the main TensorFlow repo (they are not part of the TensorFlow `pip` installation).

## Instructions for Windows

- Add a folder named "tf_files". Add a folder for each category and put the imges in the corresponding folder.
- run one cmd with
"tensorboard --logdir tf_files/training_summaries --host=127.0.0.1"
 for logging.

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