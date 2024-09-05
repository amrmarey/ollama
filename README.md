# **Ollama and Open-WebUI Docker Compose Setup**

## Overview

This repository provides a Docker Compose setup for running Ollama and Open-WebUI with NVIDIA GPU support. This setup allows you to easily deploy and manage these services on your local machine or in a production environment.
Services
Ollama

    The latest Ollama image from Docker Hub, configured to use NVIDIA GPU support.

## Open-WebUI

    The latest Open-WebUI image from GitHub Container Registry, configured to use NVIDIA GPU support and connect to the Ollama service.

### Features

    NVIDIA GPU Support: Both services are configured to use NVIDIA GPU support, allowing you to take advantage of GPU acceleration.
    Healthchecks: Both services include healthchecks to ensure they are running correctly and can be restarted automatically if they fail.
    Dependency Management: The Open-WebUI service depends on the Ollama service, ensuring that Ollama is started before Open-WebUI.

## UsageUsage
### Step 1: Clone the repository

bash

`git clone https://github.com/amrmarey/ollama.git`

### Step 2: Install Docker and Docker Compose

Install Docker and Docker Compose on your system.
### Step 3: Start the services

bash

`docker-compose up -d
`
### Step 4: Access the Open-WebUI interface

Access the Open-WebUI interface at http://localhost:5000.
Configuration

The following environment variables can be set to customize the setup:

    ENV: Set to production by default, can be changed to development for debugging purposes.
    OLLAMA_BASE_URL: Set to http://ollama:11434 by default, can be changed to point to a different Ollama instance.

## TroubleshootingTroubleshooting

If you encounter issues with the setup, check the logs for each service using:

bash

`docker-compose logs -f <service_name>
`
You can also use:

bash

`docker-compose exec <service_name> bash
`
to access the container and troubleshoot issues.
## Contributing

Pull requests and issues are welcome! If you'd like to contribute to this repository, please fork and submit a pull request with your changes.
License

This repository is licensed under the MIT License. See LICENSE for details.

## Contact

###### If you have any questions or need help with this setup, please contact me at amr.marey@msn.com.