#!/bin/bash
mkdir my-react-app
cd my-react-app
npm init -y
npm install react react-dom
npm install --save-dev parcel-bundler
mkdir src
touch src/index.js
touch src/App.js
mkdir public
touch public/index.html
touch .env