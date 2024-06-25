# Use Python as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Copy the requirements.txt file into the container
COPY /Users/aidanmorson/Desktop/research/conda_neuro_packages.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /Users/aidanmorson/Desktop/research/conda_neuro_packages.txt

# Run bash script when the container launches
ENTRYPOINT [ "bash" ]
