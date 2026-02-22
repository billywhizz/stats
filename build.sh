DEST=docs
mkdir -p $DEST
npx uglify-js -o $DEST/simple.min.js --compress --mangle -- simple.js
npx uglify-js -o $DEST/sqlite.min.js --compress --mangle -- sqlite.js
cp sqlite.wasm $DEST/
cp simple.html $DEST/index.html
mkdir -p $DEST/db
cp db/*.db $DEST/db/
cp android-icon-192x192.png $DEST/
cp site.webmanifest $DEST/