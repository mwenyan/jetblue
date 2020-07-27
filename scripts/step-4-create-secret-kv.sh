source setup.sh
echo "create secret..."
echo "app secret kv yaml file:" $1
kubectl apply -f $1
echo "create secret...done"