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

kind create cluster --name <cluster-name>

Verify the cluster is running:

kubectl cluster-info --context kind-<cluster-name>


Step 3: Build Your Docker Image Locally

Navigate to the directory containing your application's Dockerfile and build your image. Crucial tip: Tag the image with a custom name or version so it doesn't default to latest (which forces Kubernetes to try and pull it from the web).

docker build -t <application name:tag> .


Step 4: Load the Image into Kind

Because Kind runs inside Docker containers, it cannot naturally see the images stored on your Mac's host Docker daemon. You must explicitly sideload the image into the cluster.

kind load docker-image <application name:tag> --name <clust-name>


Step 5: Deploy with kubectl

Apply the configurations directly to your Kind cluster:

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

Ensure that your pods are running smoothly:

kubectl get pods
Verify that your pods are up and running smoothly:

