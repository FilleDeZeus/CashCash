<template>
  <Header/>
  <SideBar />
  <main id="main">
    <router-view></router-view>
  </main>
</template>

<script>
import SideBar from './components/SideBar/SideBar.vue';
import Header from './components/Header/Header.vue';

export default {
components: {
  SideBar,
  Header
}
};
</script>

<style>
@import './assets/styles/base.scss';
</style>
