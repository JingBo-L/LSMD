#!/bin/bash

# activate conda environment
conda activate detectron2_jing

# run training script 
nohup python train_net_S.py --config-file configs/SLR100-50-S.yaml MODEL.WEIGHTS L-100_20_S_onlyKD/model_final.pth SOLVER.BASE_LR 5e-4 OUTPUT_DIR L-100_20_S_onlyKD_2x >L-100_20_S_onlyKD_2x/stdout.log 2>L-100_20_S_onlyKD_2x/stderr.log &

# deactivate conda environment
conda deactivate

exit 0

