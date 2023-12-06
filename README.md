# PHP DBGp Proxy Docker Image

This Docker image provides a lightweight and fast PHP DBGp Proxy server based on Alpine Linux. DBGp is a proxy used for debugging PHP applications in multi-user environment. This image is designed to simplify the setup of a DBGp Proxy server in your development environment.

## Usage

### Docker Pull Command

You can pull the latest version of the image from Docker Hub using the following command:

```bash
docker pull mahiarirani/dbgp:latest
```

### Docker Compose

To quickly get started, you can use the provided docker-compose.yml file. Make sure to customize it based on your requirements
```yaml
version: '3'
services:
  dbgp:
    image: mahiarirani/dbgp:latest
    restart: unless-stopped
    environment:
      IDE_PORT: 9001
      DEBUG_PORT: 9003
    # Add additional configuration as needed
```

Save and adjust this file to your need and run the following command to start the DBGp Proxy server:
```bash
docker-compose up -d
```

### Configuration

You can customize the configuration of the DBGp Proxy server by providing environment variables. 

    IDE_PORT: The port of proxy you will set on your IDE to listen. Default is 9001.
    DEBUG_PORT: The port on which the X-Debug is running server. Default is 9003.

#### Example:

```bash
docker run -d -e IDE_PORT=9001 -e DEBUG_PORT=9003 mahiarirani/dbgp:latest
```

### Building the Image

If you prefer to build the Docker image locally, you can use the provided Dockerfile. Clone the repository and run the following commands:

```bash
git clone https://github.com/mahiarirani/dbgp-docker.git
cd dbgp-docker
docker build -t mahiarirani/dbgp:latest .
```