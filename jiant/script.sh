EXP_DIR=../

GPU_ID=$1

#CUDA_VISIBLE_DEVICES=$GPU_ID python -m jiant.scripts.download_data.runscript \
    #download \
    #--benchmark GLUE \
    #--output_path ${EXP_DIR}/GLUE

CUDA_VISIBLE_DEVICES=$GPU_ID python -m jiant.proj.simple.runscript \
    run \
    --run_name glue \
    --exp_dir ${EXP_DIR}/ \
    --data_dir ${EXP_DIR}/GLUE \
    --hf_pretrained_model_name_or_path bert-base-uncased \
    --tasks cola,sst,mrpc,qqp,stsb,mnli,mnli_mismatched,qnli,rte,wnli,glue_diagnostics \
    --train_batch_size 128 \
    --num_train_epochs 10 \
    --write_test_preds \
    --do_save_best
