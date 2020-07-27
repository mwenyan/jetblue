source setup.sh
echo "exporting app env properties..."
echo "app folder:" $1
../base/engine-darwin_amd64 --app $1/flogo.json --export props-env
mv *.properties $1/env.properties
echo "exporting app env properties...completed"