rm -rf test
mkdir test
cp -r example/* test/
cp src/*.svelte test/src/ 
cd test
sed -i -e 's|import { BlurhashImage, BlurhashPicture } from "svelte-blurhash";|import BlurhashImage from "./BlurhashImage.svelte";|' src/App.svelte
sed -i '2a import BlurhashPicture from "./BlurhashPicture.svelte";'  src/App.svelte
npm run build
npm run start