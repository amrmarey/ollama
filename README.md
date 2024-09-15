# AI Ollama Docker Setup

[![Docker Compose](https://img.shields.io/badge/Docker-Compose-2496ED.svg?logo=docker&style=flat)](https://docs.docker.com/compose/) [![Nginx](https://img.shields.io/badge/Nginx-009639.svg?logo=nginx&style=flat)](https://www.nginx.com/) ![GitHub repo size](https://img.shields.io/github/repo-size/amrmarey/ollama?logo=github) [![License](https://img.shields.io/github/license/amrmarey/ollama)](https://github.com/amrmarey/ollama/blob/main/LICENSE) ![Issues](https://img.shields.io/github/issues/amrmarey/ollama)

🚀 **Ollama** is a comprehensive solution to deploy and manage your **AI server on-premises** using Docker and Nginx. This repository provides everything required to build a fully functional AI server within your infrastructure, ensuring data privacy, control, and scalability.

Nginx is integrated to manage and **secure the WebUI interface**, ensuring robust access control, SSL termination, and performance optimization for seamless interaction with the AI system.

---

## 📑 Table of Contents

- [AI Ollama Docker Setup](#ai-ollama-docker-setup)
  - [📑 Table of Contents](#-table-of-contents)
  - [🛠️ Getting Started](#️-getting-started)
    - [Key Features:](#key-features)
  - [⚙️ Prerequisites](#️-prerequisites)
  - [📦 Installation](#-installation)
  - [🔧 Configuration](#-configuration)
    - [Docker Compose](#docker-compose)
    - [Nginx Configuration](#nginx-configuration)
  - [📋 Usage](#-usage)
  - [🤝 Contributing](#-contributing)
  - [📄 License](#-license)
  - [📧 Contact](#-contact)

---

## 🛠️ Getting Started

This project sets up a containerized environment using Docker Compose and Nginx as a reverse proxy to build your AI server on-premises. The setup allows you to host and run AI models in your own data center, with Nginx managing and securing the WebUI interface.

### Key Features:
- **AI on-premises**: Full control over AI infrastructure without cloud dependency.
- **Nginx for WebUI Security**: Secure access and traffic management for the AI WebUI.
- **Docker Compose**: Orchestrates all components, making it easier to scale and manage the AI system.

---

## ⚙️ Prerequisites

Ensure that the following software is installed on your machine:

- [Docker](https://www.docker.com/get-started) ![Docker](https://img.shields.io/badge/-Docker-2496ED?logo=docker&logoColor=white)
- [Docker Compose](https://docs.docker.com/compose/) ![Compose](https://img.shields.io/badge/-Docker%20Compose-2496ED?logo=docker&logoColor=white)

---

## 📦 Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/amrmarey/ollama.git
    cd ollama
    ```

2. **Configure the `.env` file**:

    Copy the example file and edit it:

    ```bash
    cp .env.example .env
    ```

    **Environment Variables**:

    ```ini
    SERVER_NAME=ai.example.com
    Days=365
    C=EG
    ST=Alexandria
    L=Alexandria
    O=example.com
    OU=Information Security Team
    CN=*.example.com
    ```

3. **Start the services**:

    ```bash
    docker-compose up -d
    ```

4. **Access the WebUI** at:  
   `http://ai.example.com` or `https://ai.example.com` (if SSL is configured)

---

## 🔧 Configuration

### Docker Compose

The `docker-compose.yaml` file defines the service architecture and networking. By default, services run on:

- HTTP: Port 80
- HTTPS: Port 443

### Nginx Configuration

The `nginx.conf` file is used to secure and manage the WebUI interface. Nginx ensures:

- **SSL termination**: Secure HTTPS communication.
- **Reverse proxy**: Routing traffic to internal services.
- **Access control**: Manage permissions and restrictions to the WebUI.

You can further customize this configuration to suit your environment, such as adding load balancing or advanced security settings.

---

## 📋 Usage

- **Start services**:

    ```bash
    docker-compose up -d
    ```

- **Stop services**:

    ```bash
    docker-compose down
    ```

- **Check logs**:

    ```bash
    docker-compose logs -f
    ```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push the branch (`git push origin feature-branch`).
5. Open a pull request.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/amrmarey/ollama/blob/main/LICENSE) file for details.

---

## 📧 Contact

For inquiries or issues, please reach out to:

- **Amr Marey**  
  Email: [amr.marey@msn.com](mailto:amr.marey@msn.com)  
  GitHub: [https://github.com/amrmarey](https://github.com/amrmarey)

---

Enjoy building your secure AI server on-premises with **Ollama**! 🚀
