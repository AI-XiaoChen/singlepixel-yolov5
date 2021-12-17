#!/bin/bash

#data=data/VisDrone.yaml
data=data/NPS-Drone.yaml


#cfg=yolov5s.yaml
cfg=yolov5s_sp.yaml


weights='yolov5s.pt'


# basename and lastname
basename='runs/train/visdrone'

name='sigle_pixel_1'

img_size=640
batch_size=1
epochs=10
workers=18

#ismodified=True
#ismodified= 'False'

python train.py --data $data --cfg $cfg --batch-size $batch_size --weights $weights --name $name --epochs $epochs \
  --imgsz $img_size --project $basename --workers $workers --exist-ok


