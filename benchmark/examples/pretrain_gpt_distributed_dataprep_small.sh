jsonfile="datasets/eight.files3.json"
vocabfile="datasets/vocab.json"
mergefile="datasets/merges.txt"
prefix="datasets/gpt-large-cased-vocab-small"

python tools/preprocess_data.py \
       --input $jsonfile \
       --output-prefix $prefix \
       --vocab $vocabfile \
       --dataset-impl mmap \
       --tokenizer-type GPT2BPETokenizer \
       --merge-file $mergefile \
       --append-eod --workers 1 --chunk 25
