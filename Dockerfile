# Use Miniconda as the base image
FROM continuumio/miniconda3:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the environment.yml and pip_requirements.txt files into the container
COPY environment.yml .
COPY pip_requirements.txt .

# Install mamba
RUN conda install mamba -n base -c conda-forge

# Create the conda environment and install packages using mamba
RUN mamba env create -f environment.yml

# Install build tools (gcc, g++)
RUN apt-get update && apt-get install -y build-essential

# Activate the conda environment
SHELL ["conda", "run", "-n", "neuro_env", "/bin/bash", "-c"]

# Install pybind11 first to ensure it is available for phat
RUN pip install pybind11

# Install the rest of the pip packages
RUN pip install --no-cache-dir -r pip_requirements.txt

## Copy the entire root directory into the container
COPY . .

# Set the entrypoint to bash
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "neuro_env", "bash"]
