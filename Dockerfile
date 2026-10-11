# Start from a base image
FROM ubuntu:22.04

# Run a command to install software
RUN apt-get update && apt-get install -y curl

# Set the command that runs when the container starts
CMD ["curl", "--version"]
