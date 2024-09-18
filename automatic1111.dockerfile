# Use the NVIDIA CUDA base image with Python and CUDNN support
#FROM nvidia/cuda:12.2.0-cudnn8-runtime-ubuntu22.04
FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04


# Set environment variables
ENV DEBIAN_FRONTEND = noninteractive
ENV PYTHONUNBUFFERED = 1
ENV CUDA_HOME = "/usr/local/cuda"
ENV TORCH_CUDA_ARCH_LIST = "8.6"  # Update for your GPU architecture

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv git wget curl \
    build-essential libgl1-mesa-glx libglib2.0-0 ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /stable-diffusion-webui

# Clone the Stable Diffusion WebUI repository
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git .

# Install Python dependencies
RUN pip3 install --upgrade pip && \
    pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    pip3 install -r requirements.txt \
    #pip3 install xformers --extra-index-url https://download.pytorch.org/whl/cu116 --upgrade

# Optional: Download a pre-trained model or copy one into the container
# COPY your_model_here.ckpt /stable-diffusion-webui/models/Stable-diffusion/

# Expose the default WebUI port
EXPOSE 7860

# Command to launch the WebUI
CMD ["python3", "launch.py", "--listen", "--port", "7860", "--xformers", "--enable-insecure-extension-access"]
