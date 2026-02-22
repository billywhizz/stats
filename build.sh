mkdir -p dist
npx uglify-js -o dist/simple.min.js --compress --mangle -- simple.js
npx uglify-js -o dist/sqlite.min.js --compress --mangle -- sqlite.js
cp sqlite.wasm dist/
cp simple.html dist/index.html
mkdir -p dist/db
cp db/*.db dist/db/
cp android-icon-192x192.png dist/
cp site.webmanifest dist/