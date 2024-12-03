# Docker JupyterLab

## Getting Started
1. Clone the repository <br>
    ```
    git clone git@github.com:alvin-wen/docker-jupyter.git
    ```

2. Run docker compose command
    ```
    docker compose up -d
    ```

## Dev Notes
### Adding libraries
Edit the requirements.txt and Dockerfile if needed

### Enabling GPU
1. Install Nvidia Cuda Toolkit <br>
2. Add the configuration below in the docker compose file
    ```
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              capabilities: [gpu]
    ```

