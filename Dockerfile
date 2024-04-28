# Use the latest Ubuntu base image
FROM ubuntu:latest

# Update package lists and install necessary dependencies
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    gcc libffi-dev musl-dev ffmpeg aria2 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy application code into the container
COPY . /app/
WORKDIR /app/

# Create a virtual environment and activate it
RUN python3 -m venv my_env && \
    . my_env/bin/activate && \
    pip install --no-cache-dir --upgrade pip

# Install Python dependencies listed in the Installer file
RUN pip install --no-cache-dir --upgrade --requirement Installer

# Specify the default command to run
CMD python3 modules/main.py

