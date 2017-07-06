#!/bin/bash
set -euo pipefail

if ! [ -d csi-wp-plugin ]; then
	git clone https://github.com/tianmarin/csi-wp-plugin.git && chmod -R 777 csi-wp-plugin
fi
cd csi-wp-plugin
npm install >npm_install.log

gulp browser-sync >> gulp.log

