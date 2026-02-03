#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

ollama list

echo "🐇 Retrieve llama3 model..."
ollama pull llama3.2:1b

echo "🟢 llama downloaded!"

# Wait for Ollama process to finish.
wait $pid
echo "🟢 ollama ready!"
