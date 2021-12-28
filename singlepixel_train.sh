#!/bin/bash

#data=data/VisDrone.yaml
#data=data/NPS-Drone.yaml
data=data/VOC.yaml


#cfg=yolov5s.yaml
cfg=yolov5s_sp2.yaml


#weights='yolov5s.pt'
#weights='.runs/train/visdrone/visdrone_320_56_no_mosaic_1/weights/last.pt'
#weights='runs/train/voc_yolo/voc_128_300e/weights/best.pt'
weights='runs/train/VOC/128_0.03_300+100+300e/weights/last.pt'

hyp=data/hyps/hyp.voc.yaml

# basename and lastname
basename='runs/train/VOC'
## colab
#basename='/content/drive/MyDrive/runs/train'


name='128_0.03_300+100+300e'
## colab
#name='sigle_pixel_480_'


img_size=128
batch_size=40
epochs=300
workers=8

#ismodified=True
#ismodified= 'False'

python train.py --data $data --cfg $cfg --batch-size $batch_size --weights $weights --name $name --epochs $epochs \
  --imgsz $img_size --project $basename --workers $workers --exist-ok --patience 0


#function ClickConnect(){
#    colab.config
#    console.log("循环执行Start");++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
#    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
#    console.log("循环执行End");
#}
#function ClickConnectOne(){
#    colab.config
#    console.log("单次执行Start");
#    //document.querySelector("#top-toolbar > colab-connect-button").querySelector("#connect").click();
#    //document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
#    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
#    //document.querySelector("#connect").click()
#    console.log("单次执行End");
#}
#
#try{
#    setTimeout(ClickConnectOne,8000)
#}catch{
#    consle.log("单次执行失败！");
#}
#
#try{
#    setInterval(ClickConnect, 60000)
#}catch{
#    consle.log("循环执行失败！");
#}
