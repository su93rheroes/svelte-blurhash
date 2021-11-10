<script>
  import { onMount, createEventDispatcher } from "svelte";

  const dispatch = createEventDispatcher();

  export let src;
  export let alt;
  export let width;
  export let height;
  export let fadeDuration = 500;
  let thisImage;
  onMount(() => {
    thisImage.onload = () => {
      thisImage.style.opacity = 1;
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
  style="transition-duration: {fadeDuration}ms;"
  loading="lazy"
  decoding="async"
/>

<style>
  img {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    transition: opacity 500ms;
    object-fit: cover;
    max-height: 100%;
    min-height: 100%;
    max-width: 100%;
    min-width: 100%;
  }
</style>
