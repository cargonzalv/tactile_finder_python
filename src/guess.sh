cp ./examples/image_retraining/label_image.py /tf_files
cd /tf_files
python label_image.py --graph=/tf_files/retrained_graph.pb --image= /img/guess.jpg