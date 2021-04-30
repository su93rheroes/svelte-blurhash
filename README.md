# svelte-blurhash

<p>
  <a href="https://www.npmjs.com/package/svelte-blurhash">
    <img src="https://img.shields.io/npm/v/svelte-blurhash.svg" alt="npm version">
  </a>
  <a href="https://github.com/h416/svelte-blurhash/blob/master/LICENSE">
    <img src="https://img.shields.io/npm/l/svelte-blurhash.svg" alt="license">
  </a>
</p>

[svelte](https://svelte.dev/) components for [blurhash](https://github.com/woltapp/blurhash).

lazy loading with a blurhash image.

[Demo](https://h416.github.io/svelte-blurhash/demo/)

## Install
```bash
npm install --save blurhash svelte-blurhash
```

## Usage
```html
<script>
  import BlurhashImage from 'svelte-blurhash';
</script>

<BlurhashImage
        src={"https://blurha.sh/assets/images/img1.jpg"}
        hash={"LEHV6nWB2yk8pyoJadR*.7kCMdnj"}
        width={269}
        height={173}
/>

```
## Options

* fadeDuration: fade animation duration. default 500(ms).

```html
<BlurhashImage
        src={"https://blurha.sh/assets/images/img1.jpg"}
        hash={"LEHV6nWB2yk8pyoJadR*.7kCMdnj"}
        width={269}
        height={173}
        fadeDuration={600} />
```

## Picture Tag
```html
<BlurhashPicture
                src={"https://www.1-firststep.com/samplephp/jpg-webp-avif/image/1000.jpg"}
                hash={"LEHV6nWB2yk8pyoJadR*.7kCMdnj"}
                width={320}
                height={206}
                fadeDuration={800}
        >
                <source
                        srcset="https://www.1-firststep.com/samplephp/jpg-webp-avif/image/1000.webp"
                        type="image/webp"
                />
                <source
                        srcset="https://www.1-firststep.com/samplephp/jpg-webp-avif/image/1000.avif"
                        type="image/avif"
                />
</BlurhashPicture>
```

## Links
* https://blurha.sh/
* https://hat-tap.com/blog/posts/images-in-svelte-lazy-loading-with-placeholder/
* https://css-tricks.com/lazy-loading-images-in-svelte/
* https://github.com/donovanh/svelte-image-loading
* https://www.industrialempathy.com/posts/image-optimizations/
