#!/bin/bash

# Path to VIAME installation
export VIAME_INSTALL=/opt/noaa/viame

# Processing options
export INPUT_DIRECTORY=videos
export FRAME_RATE=5

# Setup paths and run command
source ${VIAME_INSTALL}/setup_viame.sh

python ${VIAME_INSTALL}/configs/ingest_video.py --init \
  -d ${INPUT_DIRECTORY} \
  -p pipelines/index_default.tut.res.pipe \
  --build-index --ball-tree -frate ${FRAME_RATE} \
  -install ${VIAME_INSTALL}
