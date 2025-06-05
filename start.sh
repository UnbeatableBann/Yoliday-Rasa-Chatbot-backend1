#!/bin/bash
echo "Starting Rasa and Action Server..."
echo "PORT is set to: $PORT"
rasa run actions --port 5055 &
rasa run --enable-api --model /app/models --cors "*" --port $PORT