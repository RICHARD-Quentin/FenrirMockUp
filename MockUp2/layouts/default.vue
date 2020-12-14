<template lang="pug">
  div.relative
    Loader.absolute(:isLoading = "isLoading")
    Header
    div.bg-gray-900.text-gray-100
      main.container
        Nuxt

    Footer
</template>

<script>
  import Header from "../components/header";
  import Loader from "../components/loader";
  import Footer from "../components/footer";
  export default {
    components: {Header, Loader, Footer},
    data(){
      return{
        isLoading: true
      }
    }
  }
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100%;
  min-width: 100%;
}
</style>
