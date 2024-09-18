FROM nvidia/cuda:12.6.1-cudnn-runtime-ubuntu20.04

# Install dependencies (e.g., Python, pip, locales)
RUN apt-get update && apt-get install -y \
    python3-pip \
    libopenblas-dev \
    git \
    locales \
 && locale-gen en_US.UTF-8 \
 && apt-get clean

# Upgrade pip to the latest version
RUN pip3 install --upgrade pip

# Clone stable-diffusion-webui repository from Git
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /app

# Set working directory to /app
WORKDIR /app

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose port 7860 for webUI access
EXPOSE 7860

# Start stable-diffusion-webui
CMD ["python", "webui.py"]