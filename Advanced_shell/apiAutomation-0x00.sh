#!/bin/bash

# API URL for Pikachu
API_URL="https://pokeapi.co/api/v2/pokemon/pikachu"

# Output files
OUTPUT_FILE="data.json"
ERROR_FILE="errors.txt"

# Make the API request
curl -s -f "$API_URL" -o "$OUTPUT_FILE"

# Check if the request was successful
if [ $? -ne 0 ]; then
    echo "[$(date)] Error: Failed to fetch data from $API_URL" >> "$ERROR_FILE"
fi
