#!/bin/bash

MODEL=$1
MODEL=${MODEL:-"gemma2:2b"}

echo "run model : ${MODEL}"

# docker compose up

docker exec -it ollama-web-ui-server-ollama-1 \
    ollama run $MODEL
