#!/usr/bin/env bash
export PYTHONPATH="$PYTHONPATH:/Vision-Project-Image-Segmentation"

# Passed as arguments
export CUDA_VISIBLE_DEVICES=$3

CUDA_VISIBLE_DEVICES=3 jupyter notebook --ip 0.0.0.0 --port 8890 --allow-root