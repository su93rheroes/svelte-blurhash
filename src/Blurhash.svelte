<script>
  import { decode } from "blurhash";
  import { onMount } from "svelte";

  export let hash;
  export let resolutionX = 16;
  export let resolutionY = 16;
  export let punch = 1;

  let canvas;

  onMount(() => {
    if (hash && canvas) {
      const pixels = decode(hash, resolutionX, resolutionY, punch);
      const ctx = canvas.getContext("2d");
      const imageData = ctx.createImageData(resolutionX, resolutionY);
      imageData.data.set(pixels);
      ctx.putImageData(imageData, 0, 0);
    }
  });
</script>

<canvas bind:this={canvas} width={resolutionX} height={resolutionY} />

<style>
  canvas {
    width: 100%;
    height: 100%;
  }
</style>
