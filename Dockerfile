FROM ubuntu:latest

# Update and install dependencies
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends gcc libffi-dev musl-dev ffmpeg aria2 python3-pip python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy application code into the container
COPY . /app/
WORKDIR /app/

# Create and activate virtual environment
RUN python3 -m venv venv
RUN . venv/bin/activate

# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade --requirement Installer

# Start the application
CMD python3 modules/main.py
