source setup.sh
echo "building app docker iamge..."
echo "app folder:" $1
echo "app image tag: " $2
sed -i '' "s/Primary\/Secondary/Primary_Secondary/g" $1/flogo.json
docker build -f $1/Dockerfile -t $2 $1
echo "building app docker iamge...completed"

echo "login to acr..."
az acr login --name tibjetblueontainers

echo "tagging container for acr.."
docker tag $2 tibjetblueontainers.azurecr.io/$2

echo "pushing to acr..."
docker push tibjetblueontainers.azurecr.io/$2

echo "done"