#!/bin/bash
# Check details on https://github.com/gasolin/ghpage-auto-deploy

cd $FOLDER_TO_UPLOAD
git init
git add -A
git commit -m "Site updated: $(TZ=:$TIMEZONE date)"

echo "push to github..."
# remove git log by redirect log to /dev/null output
git push -u https://$GH_TOKEN@github.com/$ACCOUNT/$REPO.git HEAD:$BRANCH --force &> /dev/null
echo "done"
