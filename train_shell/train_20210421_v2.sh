##########################################################################
# File Name: train_20201120.sh
# Author: xander-sun
# mail: youngsun_007@163.com
# Created Time: 2020年11月20日 星期五 10时13分09秒
#########################################################################
#!/bin/sh
#PATH=/home/ys/bin:/usr/local/sbin:/usr/local/bin
#export PATH

train_code_path="/home/xys/tensorflow_test/train_code/sycu-tensorflow-train/research/object_detection/"
model_dir="/home/xys/tensorflow_test/nets/sycu_ssd_mobilenet_v2_20210421"
python3 ${train_code_path}model_main.py \
--logtostderr \
--save_checkpoints_steps=10000 \
--model_dir=${model_dir} \
--pipeline_config_path="${model_dir}/pipeline.config"

