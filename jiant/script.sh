EXP_DIR=../

GPU_ID=$1

CUDA_VISIBLE_DEVICES=$GPU_ID python -m jiant.scripts.download_data.runscript \
    download \
    --benchmark GLUE \
    --output_path ${EXP_DIR}/GLUE
#CUDA_VISIBLE_DEVICES=$GPU_ID python -m jiant.proj.simple.runscript \
    #run \
    #--run_name simple \
    #--exp_dir ${EXP_DIR}/ \
    #--data_dir ${EXP_DIR}/tasks \
    #--hf_pretrained_model_name_or_path roberta-base \
    #--tasks mrpc \
    #--train_batch_size 128 \
    #--num_train_epochs 5 \
    #--write_test_preds \
    #--do_save_best
