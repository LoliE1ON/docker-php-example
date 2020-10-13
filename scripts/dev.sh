#!/bin/bash

if ! type "docker-compose" > /dev/null; then
  echo Docker-compose not installed.
  exit 1
fi

if [ ! -f ".env" ]; then
  echo ".env file does not exist"
  exit 1
fi

source .env

# Запуск и сборка контейнеров
docker-compose down
docker-compose build
docker-compose up