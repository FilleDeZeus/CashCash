<template>
    <div class="sidebar">
        <img src="@/assets/logo.png" alt="Logo de l'entreprise" class="logo"/>
        <ul>
            <li v-for="item in menuItems" :key="item.name">
                <router-link :to="item.path" class="route" >
                    <img :src="item.icon" :alt="item.name" />
                    <span>{{ item.name }}</span>
                </router-link>
            </li>
        </ul>
    </div>
</template>


<script>
import dashboard from '@/assets/icons/blanc/dashboard.svg';
import intervention from '@/assets/icons/blanc/intervention.svg';
import contrat from '@/assets/icons/blanc/contrat.svg';
import reglage from '@/assets/icons/blanc/reglage.svg';
import aide from '@/assets/icons/blanc/aide.svg';
import technicien from '@/assets/icons/blanc/technicien.svg';
import clients from '@/assets/icons/blanc/clients.svg';

export default {
    name: 'SideBar',
    data() {
        return {
        menuItems: [
            { name: 'Tableau de bord', icon: dashboard, path: '/' },
            { name: 'Interventions', icon: intervention, path: '/interventions' },
            { name: 'Contrats', icon: contrat, path: '/contrats' },
            { name: 'Réglages', icon: reglage, path: '/reglages' },
            { name: 'Aides', icon: aide, path: '/aides' },
            { name: 'Techniciens', icon: technicien, path: '/techniciens' },
            { name: 'Clients', icon: clients, path: '/clients' },
        ]
        };
    }
};
</script>
<style>
@import './SideBar.scss';
</style>
