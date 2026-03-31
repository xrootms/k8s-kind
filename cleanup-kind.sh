#!/bin/bash

kind get clusters | while read -r CLUSTER
do
    echo "Deleting $CLUSTER"
    kind delete cluster --name "$CLUSTER"
done

echo "Removing KIND binary.."
sudo rm -f /usr/local/bin/kind

echo "Checking KIND version..."
if command -v kind &> /dev/null
then
    kind --version
else
    echo "KIND is not installed."
fi

echo "✅ Done!"

####
# Remove kubectl
####

#rm -rf ~/.kube/cache
#rm -rf ~/.kube
#sudo rm -f /usr/local/bin/kubectl
