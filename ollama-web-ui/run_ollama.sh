#!/bin/bash

MODEL=$1
MODEL=${MODEL:-"llama3.2:1b"}

echo "run model : ${MODEL}"

docker run -d \
    --gpus=all \
    -v ollama:/root/.ollama \
    -net=host \
    -p 11434:11434 \
    --name ollama \
    ollama/ollama

docker exec -it ollama \
    ollama run $MODEL
