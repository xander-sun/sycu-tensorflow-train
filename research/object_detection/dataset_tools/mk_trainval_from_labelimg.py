
from absl import app
from absl import flags
import os
import random

FLAGS = flags.FLAGS

flags.DEFINE_string('labelimg_path', None, 'Path of folder including images and annotations')
flags.DEFINE_string('out_dir', None, 'trainval.txt')

#path = "/home/ys/tensorflow_test/date_set/sycu_20201124"

def main(argv):
    fo = open(os.path.join(FLAGS.out_dir, "trainval.txt"), "w+")
    print ("文件名: ", fo.name)

    path = FLAGS.labelimg_path
    print(path)    
    file_names = os.listdir(path)
    print(file_names)
    
    if "images" in file_names:
        img_path = os.path.join(path, "images")
        print(img_path)
   
    img_dirs = os.listdir(img_path)
    print("img_dirs:", img_dirs)
    
    idx = 0;
    for img_dir in img_dirs:
        print("img_dir:", img_dir)
        img_names = os.listdir(os.path.join(img_path, img_dir))
        
        for temp in img_names:
            if temp.endswith(".jpg"):
                img_name = temp.replace('.jpg','')
                print(img_name)
                out_str = img_name + "\t"+ str(idx) + "\t" + img_dir + "\n"
                fo.write(out_str)
                idx += 1                
#    del argv
#    if FLAGS.gpu:
#        os.environ['CUDA_VISIBLE_DEVICES'] = FLAGS.gpu
#    else:
#        print('Please assign GPUs.')
#    exit()
                                                 
                                                  
if __name__ == '__main__':
    app.run(main)



