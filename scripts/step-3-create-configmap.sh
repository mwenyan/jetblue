source setup.sh
echo "create configmap..."
echo "app folder:" $1
echo "config map name: " $2
kubectl create configmap $2 --from-env-file=$1/env.properties -o yaml --dry-run | kubectl apply -f -
echo "create configmap...done"