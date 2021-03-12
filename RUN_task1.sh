#!/usr/bin/env bash
export PYTHONPATH="$PYTHONPATH:/Vision-Project-Image-Segmentation"

# Passed as arguments
export CUDA_VISIBLE_DEVICES=$3

dir

python Vision_task_1.ipynb
