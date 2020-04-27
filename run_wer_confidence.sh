#!/bin/bash

dir=/Users/andreazhou/llsdata/kaldiss/loadtest-20q1//thread-8-alix-test-v2-offline-alix_0.10.1-30best
for confidence in 0.00 0.10 0.20 0.30 0.40 0.50 0.60; do
	python run_wer.py \
		--best ${dir}/transcript-prod-hypo-${confidence}.txt \
		--refer ${dir}/transcript-prod-ref.txt \
		--special_word '<?>' \
		--key_word '<ps>' \
		> ${dir}/wer.prod.${confidence} &
		
done
