#!/bin/bash

# Installing Custom Node for n8n

## Requirements
- Docker installed on your system
- n8n instance running (locally or on Docker)

## Step 1: Clone the Repository
```bash
git clone https://github.com/your_username/n8n_freepbx.git
cd n8n_freepbx
```

## Step 2: Docker Installation
1. Build the Docker image:
   ```bash
   docker build -t n8n_freepbx .
   ```
2. Run the Docker container:
   ```bash
   docker run -d -p 5678:5678 n8n_freepbx
   ```

## Step 3: Local Installation
1. Make sure you have the n8n and Node.js installed on your machine.
2. Navigate to the cloned repository and install required dependencies:
   ```bash
   npm install
   ```

## Step 4: Build the Node
- To build the custom node, run:
  ```bash
  npm run build
  ```

## Step 5: Verification
1. Start your n8n instance.
2. Open the n8n UI in your web browser at `http://localhost:5678`
3. Check for the custom node in the node selection panel.

## Notes
- Ensure your Node.js version is compatible with n8n's requirements.
- For further customization, edit the node's source files and rebuild as needed.