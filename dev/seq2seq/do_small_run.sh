python run_seq2seq_flax.py \
	--dataset_repo_or_path dalle-mini/encoded \
	--train_file **/train/CC3M/*.jsonl \
	--validation_file **/valid/*/*.jsonl \
	--len_train 129847128 \
	--len_eval 157312 \
	--streaming \
	--output_dir output \
	--per_device_train_batch_size 16 \
	--per_device_eval_batch_size 16 \
	--preprocessing_num_workers 80 \
	--warmup_steps 125 \
	--gradient_accumulation_steps 8 \
	--do_train \
	--do_eval \
	--adafactor \
	--num_train_epochs 1 \
	--max_train_samples 10000 \
	--learning_rate 0.005