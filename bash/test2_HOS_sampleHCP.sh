#!/bin/sh
### Launch the code for the times 0-5 and using 5 cores 
### and save the magnitude of the projected violating triangles \Delta_v at the level of edges
### on the file "edges_projection.hd5"


##The code needs to be launched from the directory "High_order_TS_with_scaffold" in order to include the
##different libraries (it is computationally expensive)
cd /Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS_with_scaffold/
codepath="test.py"
#filename="../Desktop/neuro/data/HCP_data/HCP_TS/133928/rfMRI_REST2_LR/Schaefer100/TS_Schaefer100S_gsr_bp_z.mat"
filename="/Users/aidanmorson/Desktop/neuro/data/All_data_MTS/HCP_data/HCP_TS/133928/rfMRI_REST2_LR/Schaefer100/TS_Schaefer100S_gsr_bp_z.mat"
#codepath="simplicial_multivariate.py"
#filename="./../Kaneko_CLM/trial_N50_T240_r175_eps012_008_03_0068_005.txt_kaneko
output="../Sample_restults/test2_sampledata/"
javaplexpath="/javaplex/"
echo "Current directory: $(pwd)"
ls -la
python ${codepath} ${filename} -t 0 5 -p 5 -j ${javaplexpath} ${output}
echo "Current directory: $(pwd)"
#mv scaffold_gen/ /outputpls/
#cd /Users/aidanmorson/Documents/GitHub/RHOSTS/Example/


### Alternatively, you can run directly this code in the correponding folder:
## python simplicial_multivariate.py ../Kaneko_CLM/trial_N50_T240_r175_eps012_008_03_0068_005.txt_kaneko -t 0 5 -p 5 -j javaplex trial_

