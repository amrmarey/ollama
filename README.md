
# **Ollama and Open-WebUI Docker Compose Setup**

## 📝 Overview

This repository provides a **Docker Compose** setup for running **Ollama** and **Open-WebUI** with **NVIDIA GPU support**. It allows for seamless deployment and management of these services on your local machine or in production.

- **Ollama**: Latest image from Docker Hub, optimized for **NVIDIA GPU**.
- **Open-WebUI**: Latest image from GitHub Container Registry, integrated with **NVIDIA GPU** and connected to Ollama.

## 🚀 Features

- **NVIDIA GPU Support**: Maximize performance with GPU acceleration for both services.
- **Healthchecks**: Ensures service reliability and automatic restarts upon failure.
- **Dependency Management**: Open-WebUI depends on Ollama, ensuring Ollama starts first.


## ⚙️ Usage

### Step 1: Clone the Repository


    git clone https://github.com/amrmarey/ollama.git
    cd ollama
    
### Step 2: Install Docker and Docker Compose
Make sure you have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed on your system.

### Step 3: Start the Services

`docker-compose up -d`


### Step 4: Access Open-WebUI
Navigate to [http://localhost:5000](http://localhost:5000) to interact with the Open-WebUI interface.

## ⚙️ Configuration

Customize the setup with the following environment variables:

| Variable            | Value           | Description                                              |
|---------------------|-------------------------|----------------------------------------------------------|
| `ENV`               | `production`            | Change to `development` for debugging.                   |
| `OLLAMA_BASE_URL`   | `http://ollama:11434`   | Modify to connect to a different Ollama instance.        |


## 🔧 Troubleshooting

- ** Check logs for troubleshooting:
**
	`docker-compose logs -f <service_name>`

- **Access the container to investigate further:**

	`docker-compose exec <service_name>`



## 🤝 Contributing

Contributions are welcome! Fork this repository and submit a pull request with your improvements.

## 🛡️ License

This repository is licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for more details.

## 📧 Contact

If you have questions or need assistance, feel free to reach out at **amr.marey@msn.com**.
