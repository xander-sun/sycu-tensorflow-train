##########################################################################
# File Name: train_20201120.sh
# Author: xander-sun
# mail: youngsun_007@163.com
# Created Time: 2020年11月20日 星期五 10时13分09秒
#########################################################################
#!/bin/sh
#PATH=/home/ys/bin:/usr/local/sbin:/usr/local/bin
#export PATH

labelimg_path="/home/xys/tensorflow_test/data_set/sycu_20201124"
python3 /home/xys/tensorflow_test/train_code/sycu-tensorflow-train/research/object_detection/dataset_tools/mk_trainval_from_labelimg.py \
--labelimg_path=${labelimg_path} \
--out_dir=${labelimg_path} 

