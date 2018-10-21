rm -rfv ./tf_files/saved_models/$1
rm -rfv ./tf_files/training_summaries/$1
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
docker run -v $SCRIPTPATH/tf_files:/tf_files -i -t cegonzalv/tactilefindertensorflow:latest bash -c "./train.sh $1 $2"
cmd /k