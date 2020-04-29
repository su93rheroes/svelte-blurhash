<script>
  import BlurhashImage from 'svelte-blurhash';
</script>

<div>
	
	<BlurhashImage
        src={"https://blurha.sh/assets/images/img1.jpg"}
        hash={"LEHV6nWB2yk8pyoJadR*.7kCMdnj"}
        width={320}
        height={206}
	/>

	<BlurhashImage
        src={"https://blurha.sh/assets/images/img2.jpg"}
        hash={"LGF5]+Yk^6#M@-5c,1J5@[or[Q6."}
        width={320}
        height={206}
		fadeDelay={1000}
        fadeDuration={500}
	/>

	<BlurhashImage
        src={"https://blurha.sh/assets/images/img3.jpg"}
        hash={"L6Pj0^i_.AyE_3t7t7R**0o#DgR4"}
        width={320}
        height={206}
		fadeDelay={1500}
        fadeDuration={500}
	/>

	<BlurhashImage
        src={"https://blurha.sh/assets/images/img4.jpg"}
        hash={"LKO2?U%2Tw=w]~RBVZRi};RPxuwH"}
        width={320}
        height={206}
		fadeDelay={2000}
        fadeDuration={500}
	/>

</div>

<div>
<a href="https://github.com/h416/svelte-blurhash/tree/master/example">source</a>
</div>
<style>
  :global(img) {
    vertical-align: bottom;
  }
</style>