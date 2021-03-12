#!/usr/bin/env bash
export PYTHONPATH="$PYTHONPATH:/Vision-Project-Image-Segmentation"

# Passed as arguments
export CUDA_VISIBLE_DEVICES=$3

python src/Vision_task_3.ipynb
