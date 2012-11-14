#!/bin/bash
startdir=`pwd`
echo "Deploy from $startdir"
cd $startdir

# package up the app
cd apps/camera
zip -r --update camera.zip .  --exclude camera.zip

cd $startdir
# push to prodn
rsync -avz apps/ jsadmin@leedsjs.org:/home/jsadmin/public_html/apps/
