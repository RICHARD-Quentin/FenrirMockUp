<template lang="pug">
    div.border-b-2.sticky.top-0.px-2.h-20.text-gray-100.z-40.bg-gray-700.headerFont
      div.flex.h-10.pt-1
        span Boutique Verre-Tech

        div.text-right.ml-auto
          a(v-if="!logged" @click="logged = true") Connexion
          a(v-else @click="logged = false") Deconnexion
          div(v-if="logged")
            font-awesome-icon(:icon="['fas', 'shopping-cart']").mx-2
            a Mes commandes

      div.mx-auto.text-center.h-10
        NuxtLink(v-for="component in this.menuComponents" :to="component.link" :key="component.label").mx-4
          span {{component.label}}

</template>

<script>
    export default {
        name: "header",
        data() {
          return {
            logged: false,
            menuComponents:[
              {label:"Accueil", link:"/"},
              {label:"Catalogue", link:"/catalogue"},
              {label:"Pannier", link:"/pannier"},
              {label:"Magasins", link:"/magasins"},
            ],
        }
      }
    }

</script>

<style scoped>
.headerFont{
  font-family: "Caudex";
}
</style>
