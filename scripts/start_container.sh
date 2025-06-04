#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull rmaurya2001/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 rmaurya2001/simple-python-flask-app
