rm -rf test
mkdir test
cp -r example/* test/
cp src/*.svelte test/src/ 
cd test
sed -i -e "s|svelte-blurhash|./BlurhashImage.svelte|" src/App.svelte
npm run build
npm run start