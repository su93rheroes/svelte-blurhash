<script>
  import VisibilityGuard from "./VisibilityGuard.svelte";
  import Blurhash from "./Blurhash.svelte";
  import Image from "./Image.svelte";

  export let src = "#";
  export let hash;
  export let width;
  export let height;
  export let alt = "";
  export let fadeDuration = 500;

  let isFadeIn = false;
  function onImageLoaded(event) {
    setTimeout(onImageFadeIn, event.detail.fadeDuration + 100);
  }
  function onImageFadeIn() {
    isFadeIn = true;
  }
</script>

<VisibilityGuard let:hasBeenVisible>
  {#if hasBeenVisible}
    <div style="position: relative; height: 100%;">
      {#if !isFadeIn && hash}
        <Blurhash {hash} />
      {:else}
        <div
          style="width: {width}px;height: {height}px; max-width: 100%; max-height: 100%"
        />
      {/if}

      <Image
        on:imageLoaded={onImageLoaded}
        {src}
        {alt}
        {width}
        {height}
        {fadeDuration}
      />
    </div>
  {/if}
</VisibilityGuard>
