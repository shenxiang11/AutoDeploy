WEB_PATH='/root/deploy'
 
echo "Start deployment deploy"
cd $WEB_PATH
echo "pulling source code..."

git pull
git checkout master

pm2 restart ./server.js --name 'autodeploy'
echo "Finished."