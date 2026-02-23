#!/bin/bash

# install.sh for n8n_freepbx

set -e

# Step 1: Clone the repository
echo "Cloning n8n_freepbx repository..."
git clone https://github.com/figphone/n8n_freepbx.git
cd n8n_freepbx

# Step 2: Build the Docker image
echo "Building Docker image..."
docker build -t n8n_freepbx .

# Step 3: Create a Docker container
echo "Creating Docker container..."
docker run -d --name n8n_freepbx -p 5678:5678 -e N8N_BASIC_AUTH_USER=admin -e N8N_BASIC_AUTH_PASSWORD=password n8n_freepbx

# Step 4: Access n8n
echo "n8n is now running. You can access it at http://localhost:5678"

# Step 5: Configure custom nodes
echo "Configuring custom nodes..."
# Add your custom node configuration steps here, if applicable.

echo "Installation and configuration complete!"