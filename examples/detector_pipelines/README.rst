
Detector Pipelines
------------------

This folder contains assorted examples of object detection pipelines running different
detectors such as YOLOv2, ScallopTK, Faster RCNN, etc...

Requirements
------------

| Minimum:
| 
| VIAME_ENABLE_OPENCV (default) (for image reading) or alternatively VIAME_ENABLE_VXL if
| you set :image_reader:type to vxl in each .pipe config.
|
| Per-Example:
|
| run_habcam - VIAME_ENABLE_OPENCV, VIAME_ENABLE_SCALLOP_TK
| run_yolo - VIAME_ENABLE_DARKNET
| run_lanl - VIAME_ENABLE_MATLAB

