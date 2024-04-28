# Use the base image with Python 3.12 if available
FROM python:3.12-slim

# Set environment variables
ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Create a virtual environment
RUN python3.12 -m venv $VIRTUAL_ENV

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Activate the virtual environment
RUN . $VIRTUAL_ENV/bin/activate

# Install TgCrypto package
RUN pip install --no-cache-dir --upgrade TgCrypto

# Install Python dependencies listed in the Installer file
RUN pip install --no-cache-dir --upgrade --requirement Installer

# Specify the command to run your application
CMD ["python3", "modules/main.py"]
