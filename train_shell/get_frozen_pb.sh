##########################################################################
# File Name: get_frozen_pb.sh
# Author: xander-sun
# mail: youngsun_007@163.com
# Created Time: 2020年11月26日 星期四 15时55分31秒
#########################################################################
#!/bin/sh
#PATH=/home/ys/bin:/usr/local/sbin:/usr/local/bin
#export PATH

train_code_path="/home/xys/tensorflow_test/train_code/sycu-tensorflow-train/research/object_detection/"
pb_path="/home/xys/tensorflow_test/nets/sycu_ssd_mobilenet_v3_20210415/"
python3 ${train_code_path}export_inference_graph.py \
--input_type=image_tensor \
--pipeline_config_path=${pb_path}pipeline.config \
--trained_checkpoint_prefix=${pb_path}model.ckpt-100000 \
--output_directory=${pb_path}frozen

