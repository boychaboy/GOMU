INPUT_BASE_PATH=$1
OUTPUT_BASE_PATH=$2

python -m jiant.scripts.benchmarks.benchmark_submission_formatter \
    --benchmark GLUE \
    --tasks mrpc \
    --input_base_path $INPUT_BASE_PATH \
    --output_path $OUTPUT_BASE_PATH
