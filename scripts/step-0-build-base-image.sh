source setup.sh
# $FLOGO_HOME/bin/builder-darwin_amd64 build -p linux_amd64 -o ../base/
$FLOGO_HOME/bin/builder-darwin_amd64 build -o ../base/
docker build -f ../base/Dockerfile -t flogoengine:2.9 ../base