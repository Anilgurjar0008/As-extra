# Python Based Docker
FROM python:3.12-slim

# Installing system packages (git, curl, ffmpeg, aria2, build tools)
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git curl ffmpeg aria2 build-essential python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --no-cache-dir -U pip

# Create working directory
WORKDIR /app

# Copy start.sh into container
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run start.sh as entrypoint
CMD ["/bin/bash", "/start.sh"]
