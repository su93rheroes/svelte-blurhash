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

* fadeDelay: fade animation delay. default 200(ms).
* fadeDuration: fade animation duration. default 500(ms).

```html
<BlurhashImage
        src={"https://blurha.sh/assets/images/img1.jpg"}
        hash={"LEHV6nWB2yk8pyoJadR*.7kCMdnj"}
        width={269}
        height={173}
        fadeDelay={300}
        fadeDuration={600} />
```

## Links
* https://blurha.sh/
* https://hat-tap.com/blog/posts/images-in-svelte-lazy-loading-with-placeholder/
