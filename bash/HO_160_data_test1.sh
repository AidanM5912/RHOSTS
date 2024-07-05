#!/bin/bash


cd /Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/
codepath="/Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/simplicial_multivariate.py"
data_path="/Users/aidanmorson/Desktop/research/extracted_spike_times.mat"
output_file= "/Users/aidanmorson/Desktop/research/pairwise_HO/output/HO/output1"
# Define the number of cores to use
#NCORES=5

# Optional flags (if needed)
# TIME_RANGE="-t 0 1000"
# NULL_MODEL_FLAG="-n"


# Run the Python script with the specified arguments
#-p ${NCORES}
python ${codepath} ${data_path}  -s ${output_file}
