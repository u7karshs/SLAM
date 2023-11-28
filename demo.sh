#!/bin/sh

SEQ_LENGHT=10

BATCH_SIZE=16

EPOCHS=100

NGPUS=1

SEQ1='day_left'

SEQ2='day_right'

SEQ3='night_right'

CNN='resnet18'

MODEL_NAME="gp_${CNN}_lstm"

python run_CNN_RNN.py train \
    --model_name $MODEL_NAME \
    --ngpus $NGPUS \
    --batch_size $BATCH_SIZE \
    --seq_len $SEQ_LENGHT \
    --epochs $EPOCHS \
    --val_set $SEQ2 \
    --cnn_arch $CNN

for i in $SEQ1 $SEQ2 $SEQ3
do
    python run_CNN_RNN.py val \
    --model_name $MODEL_NAME \
    --ngpus $NGPUS \
    --batch_size $BATCH_SIZE \
    --seq_len $SEQ_LENGHT \
    --val_set $i \
    --cnn_arch $CNN
done
