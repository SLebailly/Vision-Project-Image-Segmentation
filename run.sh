#!/usr/bin/env bash
export PYTHONPATH="$PYTHONPATH:/Vision-Project-Image-Segmentation"

CUDA_VISIBLE_DEVICES=7 jupyter notebook --ip 0.0.0.0 --port 8890 --allow-root