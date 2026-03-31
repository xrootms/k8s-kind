# k8s-kind

## Setup kubectl and kind

```xml
git clone 
cd kind-kubelet-cluster-ingressController-setup
chmod +X kind-kubectl.sh
./kind-kubectl.sh
```
### Verify

```xml
kind version
kubectl version --client
```


## Setup Cluster with one master and two worker Node
```xml
kind create cluster --name mycluster --config cluster-master-config.yml --image kindest/node:v1.33.1
```

### Verify

```groovy
kind get clusters
kubectl get pods
docker ps
kubectl get pods
kubectl get ns
kubectl get pods -n kube-system
kubectl get nodes
kubectl get nodes -o wide
kubectl get ns

---



```
