#!/bin/bash

# Full path to the image file
img_path=$1

# Get the directory of the image file
dir=$(dirname "$img_path")

# Get the basename of the image file
base=$(basename "$img_path")

# Construct the output filename
output="${dir}/${base%.*}-up.png"

# Docker container to run
container_name="max-image-enhancer"

# Launch docker container
docker run -d --name ${container_name} -p 5000:5000 quay.io/codait/max-image-resolution-enhancer &> /dev/null

# Wait for the container to be ready
sleep 10

# Make the POST request
curl -X POST 'localhost:5000/model/predict' \
     -H 'Content-Type: multipart/form-data' \
     -F "image=@\"${img_path}\"" \
     -o "${output}"

# Stop the docker container
docker stop ${container_name} &> /dev/null

# Remove the docker container
docker rm ${container_name} &> /dev/null
