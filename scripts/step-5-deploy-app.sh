source setup.sh
echo "deploy app..."
echo "app yaml file:" $1
kubectl apply -f $1
echo "deploy app...done"