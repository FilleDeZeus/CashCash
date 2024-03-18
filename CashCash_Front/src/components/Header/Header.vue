<template>

    <div class="header">
        <div class="banniere">
            <SearchBar />
            <div class="informations">
                <p class="role">Assistant</p>
                <p class="nom">Antoine BLANQUAERT</p>
            </div>  
            <button class="btn_connexion">
                Déconnexion
                <!-- <img src="" alt="Déconnexion" /> -->
            </button>
        </div>
        
    </div>
    </template>
    
    <script>
    import SearchBar from './SearchBar/SearchBar.vue';
    export default {
        name: 'Header',
        components: {
            SearchBar
        }
    }

    </script>
    
    <style>
    @import './Header.scss';
</style>