#!/bin/bash

codepath="/Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/simplicial_multivariate.py"
data_path="/Users/aidanmorson/Desktop/research/data/Trace_20220518_12_53_35_chip11350_curated/spike_times.mat"
output_path = "/Users/aidanmorson/Desktop/research/
# Define the number of cores to use
NCORES=4

# Optional flags (if needed)
# TIME_RANGE="-t 0 1000"
# NULL_MODEL_FLAG="-n"


# Run the Python script with the specified arguments
python ${codepath} ${data_path} -p ${NCORES}  -s ${output_path}
