WEB_PATH='/root/AutoDeploy'
 
echo "Start deployment AutoDeploy"
cd $WEB_PATH
echo "pulling source code..."

git pull

pm2 restart ./ecosystem.config.js
echo "Finished."