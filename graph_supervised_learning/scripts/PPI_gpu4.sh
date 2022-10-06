#!/bin/bash

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_0_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=3 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_1_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=9 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_2_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_3_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=1.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_4_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.1 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_5_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.01 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done


for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_6_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.0001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_7_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.0001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=1.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_8_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.0001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.1 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_9_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.0001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.01 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_10_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=3 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.01 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_11_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=3 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_12_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=3 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.00001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_13_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=3 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.000001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_14_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=9 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.01 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done


for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_15_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=9 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_16_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=9 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.00001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_17_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=9 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.000001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done


for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_18_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_19_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.00001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0
do
    EXP_DIR=../../../results/PPI/exp_20_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=18 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.000001 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done


for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_21_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=6 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_22_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=12 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done

for exp in 0 1 2 3 4
do
    EXP_DIR=../../../results/PPI/exp_23_${exp}
    mkdir ${EXP_DIR}
    CUDA_VISIBLE_DEVICES=4 \
    python3 ../train_gnn.py \
    --dataset=../../../data/PPI/ref.pt \
    --num_embedding_layers=15 \
    --embedding_type=SAGEConv \
    --dropout=0.1 \
    --lr=0.001 \
    --epochs=100 \
    --batch_size=10 \
    --num_workers=0 \
    --weight_decay=0.0 \
    --rho_reg=0.0 \
    --output_dir=${EXP_DIR} 2>&1 | tee ${EXP_DIR}/train.log
done