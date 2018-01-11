BASE=`python -c 'import os,sys;print(os.path.realpath(sys.argv[1]))' $0`
RES_DIR=`dirname $BASE`
ENV_DIR=`dirname $RES_DIR`/env

#Load all env script
for s in $ENV_DIR/*.env; do
  source $s
done

