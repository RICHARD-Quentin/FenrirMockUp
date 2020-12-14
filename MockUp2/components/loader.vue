<template lang="pug">
  div.bg-gray-400.container.flex.opacity-75.z-50(v-if="loading")
    transition(name="loaderRotate")
      font-awesome-icon.opacity-100.m-auto.loader(:icon="['fas', 'spinner']" v-show="loading")
</template>

<script>
    export default {
        name: "loader",
        props: ['isLoading'],
        data(){
            return{
              loading: false
            }
      },
      watch: {
        isLoading:
          function (){
            this.loading = this.isLoading
          }
      }
    }
</script>

<style scoped>
  .container {
    margin: 0 auto;
    min-height: 100%;
    min-width: 100%;
  }

  .loader {
    font-size: 6rem;
    opacity: 1;
  }

  .loaderRotate-enter-active {
    transition: all 3s;
  }

  .loaderRotate-enter {
    transform: rotate(3turn);
  }
</style>
