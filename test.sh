
set -e


echo "Checking up if cluster exists"
export cluster=$(kind get clusters | grep katya-cluster)
echo ${cluster}
if [ -z ${cluster} ];
then
    echo "Looks like cluster doesn't exist, creating..."
    kind create cluster --name=katya-cluster 
fi
kubectl config use-context kind-katya-cluster
kubectl get ns
#docker build -t katya-test -f  Dockerfile.dev .  