from utils import load_data_mat, create_simplicial_framework_from_data, launch_code_one_t, handle_output
import numpy as np
from multiprocessing import Pool
import h5py
import sys

# Mock sys.argv for testing
sys.argv = ['simplicial_multivariate.py', '/Users/aidanmorson/Desktop/research/qm.mat', '-t', '0', '100', '-p', '4', '-s', 'output_filename']

# Parse the input (this function should be imported from utils.py)
[path_file, t_init, t_end, t_total, ncores, null_model_flag, flag_edgeweight, flag_edgeweight_fn] = parse_input(sys.argv)

# Load the data from the .mat file
data_TS = load_data(path_file)

# Check the shape of the loaded data
print(f"Loaded data shape: {np.shape(data_TS)}")

# Initialize the simplicial framework
create_simplicial_framework_from_data(data_TS, null_model_flag)

# Perform a test computation on a single time point
test_result = launch_code_one_t(0)
handle_output(test_result)

# Check if output file is created
output_file = f"{flag_edgeweight_fn}.hd5"
if flag_edgeweight_fn and os.path.exists(output_file):
    print(f"Output file {output_file} created successfully.")
else:
    print("Output file not created.")
