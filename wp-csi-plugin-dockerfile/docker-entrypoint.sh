#!/bin/bash
set -euo pipefail
cd /themes
if ![ -d empire-strikes-back-wp-template ]; then
        git clone https://${BBUSER}:${BBPASS}@bitbucket.org/novismx/empire-strikes-back-wp-template.git && chmod -R 777 empire-strikes-back-wp-template

fi

cd /plugins
if ! [ -d csi-wp-plugin ]; then
	git clone https://${BBUSER}:${BBPASS}@bitbucket.org/novismx/csi-wp-plugin.git && chmod -R 777 csi-wp-plugin
fi
cd csi-wp-plugin/
npm config set cache ./.npm


#npm install >> npm_install.log
npm install > /proc/1/fd/1 2>&1

npm run gulp browser-sync > /proc/1/fd/1 2>&1

