#!/bin/bash

if [ "${NPM}" = "install" ]; then
  npm install && npm run watch
elif [ "${NPM}" ]; then
  COMMAND=("${NPM}")
	npm "${COMMAND[@]}"
else
  npm run watch
fi