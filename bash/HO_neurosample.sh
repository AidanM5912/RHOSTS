#!/bin/sh
### Launch the code for the times 0-5 and using 5 cores
codepath="/Users/aidanmorson/Documents/GitHub/RHOSTS/High_order_TS/test2.py"
filename="/Users/aidanmorson/Desktop/neuro/data/Trace_20220510_21_20_28_chip11350_phy/spike_times.npy"
python ${codepath} ${filename} -t 0 5 -p 5 -s run3trace
