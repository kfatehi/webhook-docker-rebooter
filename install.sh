#!/bin/bash
set -euxo pipefail
docker run -d --name webhook-receiver \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-v /usr/bin/docker:/usr/bin/docker:ro \
	-p 1337:1337 \
	-v $PWD:/app \
	-t node \
	/bin/bash -c "cd /app && node main.js"