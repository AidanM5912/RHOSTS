#!/bin/sh
### Launch the code for the times 0-5 and using 5 cores
codepath="/Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/test.py"
filename="/Users/aidanmorson/Desktop/neuro/data/All_data_MTS/HCP_data/HCP_TS/133928/rfMRI_REST2_LR/Schaefer100/TS_Schaefer100S_gsr_bp_z.mat"
python ${codepath} ${filename} -t 0 5 -p 5 -s run2HCP
