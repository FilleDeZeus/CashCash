<template>
  
  <div class="search-bar">
    <input
      type="text"
      placeholder="Recherche..."
      class="search-input"
      v-model="recherche"
    />
    <button v-if="recherche" @click="nettoyerBar" class="clear-button">
      <img src="@/assets/icons/vert/croixVert.svg" alt="Effacer" />
    </button>
    <button class="search-button">
      <img src="@/assets/icons/vert/loupeVert.svg" alt="Rechercher" />
    </button>
  </div>
</template>

<script>
export default {
  name: 'SearchBar',
  data() {
    return {
      recherche: ''
    };
  },
  methods: {
    nettoyerBar() {
      this.recherche = '';
    }
  }
};
</script>

<style>
@import './SearchBar.scss';
</style>