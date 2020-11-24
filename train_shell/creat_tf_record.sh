##########################################################################
# File Name: train_20201120.sh
# Author: xander-sun
# mail: youngsun_007@163.com
# Created Time: 2020年11月20日 星期五 10时13分09秒
#########################################################################
#!/bin/sh
#PATH=/home/ys/bin:/usr/local/sbin:/usr/local/bin
#export PATH

label_map_path="/home/ys/tensorflow_test/data_set/sycu_20201124/sycu_label_map.pbtxt"
data_dir="/home/ys/tensorflow_test/data_set/sycu_20201124/"
output_dir="/home/ys/tensorflow_test/data_set/sycu_20201124_tfrecord"

if [ ! -d "$output_dir" ]; then
  mkdir "$output_dir"
fi

python3 /home/ys/tensorflow_test/train_code/sycu-tensorflow-train/research/object_detection/dataset_tools/create_sycu_tf_record.py \
--label_map_path=${label_map_path} \
--data_dir=${data_dir} \
--output_dir=${output_dir} \
--num_shards=2

