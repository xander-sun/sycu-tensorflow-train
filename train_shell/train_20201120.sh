##########################################################################
# File Name: train_20201120.sh
# Author: xander-sun
# mail: youngsun_007@163.com
# Created Time: 2020年11月20日 星期五 10时13分09秒
#########################################################################
#!/bin/sh
#PATH=/home/ys/bin:/usr/local/sbin:/usr/local/bin
#export PATH

train_code_path="/home/ys/tensorflow_test/train_code/sycu-tensorflow-train/research/object_detection/legacy/"
python3 ${train_code_path}train.py \
--logtostderr \
--train_dir=path/to/train_dir \
--pipeline_config_path=pipeline_config.pbtxt
