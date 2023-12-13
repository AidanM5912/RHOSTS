#!/bin/sh
### Launch the code for the times 0-5 and using 5 cores 
### and save the magnitude of the projected violating triangles \Delta_v at the level of edges
### on the file "edges_projection.hd5"
codepath="../High_order_TS/test.py" #changed it from simplicial
filename="/Users/aidanmorson/Desktop/neuro/data/hw-sample-data/Spike_Raster_Control.mat" #updated this from the text file
outputfile_edges="../Sample_results/trial_gen/edges_projection" #updated
outputfile="../Sample_results/trial_gen/results_T0_5.txt" #updated
python ${codepath} ${filename} -t 0 5 -p 5 -s ${outputfile_edges} #here you need to change outputfile to outfile_edges if you want that



