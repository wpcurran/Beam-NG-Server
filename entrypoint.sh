#!/bin/bash
echo "🚀 Starting BeamMP server with secure AuthKey injection..."

# Read auth key from the mounted file
if [ -f "/server/AUTHKEY" ]; then
    AUTH=$(cat /server/AUTHKEY)
    sed -i "s/^AuthKey = .*/AuthKey = \"$AUTH\"/" /server/ServerConfig.toml
else
    echo "❌ ERROR: /server/AUTHKEY not found!"
    exit 1
fi

# Start the BeamMP server
exec ./BeamMP-Server
