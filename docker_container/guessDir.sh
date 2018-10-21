docker run --rm -v tf_files:/tf_files -v $1:/toScan -v $2:/scanned cegonzalv/tactilefindertensorflow sh -c "python py/label_dir.py"
#docker run --rm -it  -v $1:/tf_files -v $2:/toScan -v $3:/scanned tf bash
cmd /k

