<template lang="pug">
  div.container(class="w-1/3")

    transition(name="title")
      h1.titleIndex(v-show="showTitle") Verre-Tech

    transition(name="subTitle")
      div.border(class="w-5/6 sm:w-1/2" v-show="showTitle").mx-auto

    main.mx-auto(class="w-2/3")
      transition(name="articleFade")
        div(v-show="showArticles")
          article(v-for="actuality in actualities" :key="actuality.id").mx-2.my-4
            h3.articleTitle {{actuality.label }}
            p {{actuality.message }}
            div.text-right.mr-2.text-sm.mt-2 Posté le {{ actuality.date }}


</template>

<script>
export default {
  data() {
    return{
      showTitle: false,
      showArticles: false,
      actualities:[
      {
        id: 1,
        label:"Lorem Ipsum",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus sem, tempor a volutpat eu, pharetra nec turpis. Fusce iaculis lacus a facilisis rhoncus." +
          " Duis ut nunc condimentum, malesuada odio eu, commodo ligula. Mauris facilisis porttitor metus, nec tincidunt mauris consequat consectetur. Curabitur at " +
          "accumsan odio, sed consectetur nibh. Morbi gravida faucibus sem vitae sollicitudin. Ut augue leo, fermentum ac venenatis eu, aliquet eget tellus. " +
          "Sed dignissim tristique efficitur. Vestibulum vehicula, erat a semper laoreet, lacus justo faucibus lectus, in ornare dui nunc sed elit. Mauris sed ipsum " +
          "sit amet arcu laoreet mattis. Nunc laoreet ullamcorper tellus non porta. Morbi tristique erat neque, vitae pretium metus sagittis non. Etiam quis porttitor justo. " +
          "Curabitur non eros dictum, hendrerit justo id, auctor nibh. Fusce non velit ac erat finibus sollicitudin.",
        date:"12/12/2020"
      },
      {
        id: 2,
        label:"Lorem Ipsum",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus sem, tempor a volutpat eu, pharetra nec turpis. Fusce iaculis lacus a facilisis rhoncus." +
          " Duis ut nunc condimentum, malesuada odio eu, commodo ligula. Mauris facilisis porttitor metus, nec tincidunt mauris consequat consectetur. Curabitur at " +
          "accumsan odio, sed consectetur nibh. Morbi gravida faucibus sem vitae sollicitudin. Ut augue leo, fermentum ac venenatis eu, aliquet eget tellus. " +
          "Sed dignissim tristique efficitur. Vestibulum vehicula, erat a semper laoreet, lacus justo faucibus lectus, in ornare dui nunc sed elit. Mauris sed ipsum " +
          "sit amet arcu laoreet mattis. Nunc laoreet ullamcorper tellus non porta. Morbi tristique erat neque, vitae pretium metus sagittis non. Etiam quis porttitor justo. " +
          "Curabitur non eros dictum, hendrerit justo id, auctor nibh. Fusce non velit ac erat finibus sollicitudin.",
        date:"12/12/2020"
      },
      {
        id: 3,
        label:"Lorem Ipsum",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus sem, tempor a volutpat eu, pharetra nec turpis. Fusce iaculis lacus a facilisis rhoncus." +
          " Duis ut nunc condimentum, malesuada odio eu, commodo ligula. Mauris facilisis porttitor metus, nec tincidunt mauris consequat consectetur. Curabitur at " +
          "accumsan odio, sed consectetur nibh. Morbi gravida faucibus sem vitae sollicitudin. Ut augue leo, fermentum ac venenatis eu, aliquet eget tellus. " +
          "Sed dignissim tristique efficitur. Vestibulum vehicula, erat a semper laoreet, lacus justo faucibus lectus, in ornare dui nunc sed elit. Mauris sed ipsum " +
          "sit amet arcu laoreet mattis. Nunc laoreet ullamcorper tellus non porta. Morbi tristique erat neque, vitae pretium metus sagittis non. Etiam quis porttitor justo. " +
          "Curabitur non eros dictum, hendrerit justo id, auctor nibh. Fusce non velit ac erat finibus sollicitudin.",
        date:"12/12/2020"
      },
      {
        id: 4,
        label:"Lorem Ipsum",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut risus sem, tempor a volutpat eu, pharetra nec turpis. Fusce iaculis lacus a facilisis rhoncus." +
          " Duis ut nunc condimentum, malesuada odio eu, commodo ligula. Mauris facilisis porttitor metus, nec tincidunt mauris consequat consectetur. Curabitur at " +
          "accumsan odio, sed consectetur nibh. Morbi gravida faucibus sem vitae sollicitudin. Ut augue leo, fermentum ac venenatis eu, aliquet eget tellus. " +
          "Sed dignissim tristique efficitur. Vestibulum vehicula, erat a semper laoreet, lacus justo faucibus lectus, in ornare dui nunc sed elit. Mauris sed ipsum " +
          "sit amet arcu laoreet mattis. Nunc laoreet ullamcorper tellus non porta. Morbi tristique erat neque, vitae pretium metus sagittis non. Etiam quis porttitor justo. " +
          "Curabitur non eros dictum, hendrerit justo id, auctor nibh. Fusce non velit ac erat finibus sollicitudin.",
        date:"12/12/2020"
      },
    ]
    }
  },

  methods: {
    showComponents() {
      this.showArticles = true
    }
  },

  mounted() {
    this.showTitle = true
    setTimeout(this.showComponents, 1500)
  }
}
</script>

<style>

p {
  font-family: "Alegreya";
}

.titleIndex {
  font-family: "Great Vibes";
  font-size: 3rem;
  text-align: center;
}

.articleTitle {
  font-family: "Great Vibes";
  text-decoration: underline;
  font-size: 1.875rem;
  text-align: center;
}

.articleFade-enter-active {
  transition: opacity 1s;
}

.articleFade-enter {
  opacity: 0;
}

.title-enter-active {
  transition: all 1.5s;
}

.title-enter {
  transform: translateX(-100%);
  opacity: 0;
}

.subTitle-enter-active {
  transition: all 1.5s;
}

.subTitle-enter {
  transform: translateX(100%);
  opacity: 0;
}

.container {
  margin: 0 auto;
  min-height: 100vh;
}

.title {
  font-family:
    'Quicksand',
    'Source Sans Pro',
    -apple-system,
    BlinkMacSystemFont,
    'Segoe UI',
    Roboto,
    'Helvetica Neue',
    Arial,
    sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
