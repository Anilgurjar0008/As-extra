# Python Based Docker
FROM python:3.12-slim

# Installing system packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git curl ffmpeg aria2 && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --no-cache-dir -U pip

# Copy requirements
COPY requirements.txt /requirements.txt

# Install requirements
RUN pip install --no-cache-dir -r /requirements.txt

# Create working directory
RUN mkdir /EXTRACTOR
WORKDIR /EXTRACTOR

# Copy start.sh
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run bot
CMD ["/bin/bash", "/start.sh"]
