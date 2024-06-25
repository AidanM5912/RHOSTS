# Use Miniconda as the base image
FROM continuumio/miniconda3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Copy the requirements files into the container
COPY conda_requirements.txt .
COPY pip_requirements.txt .

# Create the conda environment and install packages
RUN conda install --file conda_requirements.txt

# Install pip packages
RUN pip install --no-cache-dir -r pip_requirements.txt

# Set the entrypoint to bash
ENTRYPOINT ["bash"]
