# Use Miniconda as the base image
FROM continuumio/miniconda3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Copy the environment.yml file into the container
COPY environment.yml .

# Install mamba
RUN conda install mamba -n base -c conda-forge

# Create the conda environment using mamba and the environment.yml file
RUN mamba env create -f environment.yml

# Activate the conda environment and ensure it remains active
SHELL ["conda", "run", "-n", "neuro_env", "/bin/bash", "-c"]

# Install pip packages
RUN pip install --no-cache-dir -r pip_requirements.txt

# Set the entrypoint to bash
ENTRYPOINT ["conda", "run", "-n", "neuro_env", "bash"]
