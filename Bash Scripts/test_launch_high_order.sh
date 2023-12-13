#!/bin/sh
### Launch the code for the times 0-5 and using 5 cores
codepath="/Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/test.py"
filename="/Users/aidanmorson/Desktop/neuro/data/hw-sample-data/Spike_Raster_Control.mat"
python ${codepath} ${filename} -t 0 5 -p 5 -s run1
