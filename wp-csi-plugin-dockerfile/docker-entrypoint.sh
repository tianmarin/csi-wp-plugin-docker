#!/bin/bash
set -euo pipefail

if ! [ -d csi-wp-plugin ]; then
	git clone https://${BBUSER}:${BBPASS}@bitbucket.org/novismx/csi-wp-plugin.git && chmod -R 777 csi-wp-plugin
fi
cd csi-wp-plugin
#npm install >npm_install.log

npm run gulp browser-sync >> gulp.log

