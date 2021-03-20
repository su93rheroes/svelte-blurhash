<script>
  import { onMount, createEventDispatcher } from "svelte";

  const dispatch = createEventDispatcher();

  export let src;
  export let alt;
  export let width;
  export let height;
  export let fadeDuration = 500;
  let loaded = false;
  let thisImage;
  onMount(() => {
    thisImage.onload = () => {
      loaded = true;
      dispatch("imageLoaded", { fadeDuration });
    };
  });
</script>

<img
  bind:this={thisImage}
  {src}
  {alt}
  {width}
  {height}
  class:loaded
  style="--transition: opacity {fadeDuration}ms;"
  loading="lazy"
  decoding="async"
/>

<style>
  img {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    transition: var(--transition);
  }
  img.loaded {
    opacity: 1;
  }
</style>
