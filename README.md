Please make all the files given for this project and use the below commands in sequence:

Step 1: Install the requirements

Make sure you have Docker Desktop , Kind , and kubectl installed. If you are on a mac os, open your Mac terminal and run:

# Install Kind using Homebrew
brew install kind

# Install kubectl if you don't already have it
brew install kubectl

Ensure Docker Desktop is open and running.


Step 2: Create a Kind Cluster

Create a new local Kubernetes cluster. Kind automatically configures your kubectlcontext to point to this new cluster.

kind create cluster --name local-dev
