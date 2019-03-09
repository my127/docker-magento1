#!/bin/bash
set -e

docker-compose pull
time docker-compose build
