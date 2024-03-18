import { createRouter, createWebHistory } from 'vue-router';
import DashboardView from '@/views/DashboardView/DashboardView.vue';
import InterventionsView from '@/views/InterventionsView/InterventionsView.vue';
import ContratsView from '@/views/ContratsView/ContratsView.vue';
import ReglagesView from '@/views/ReglagesView/ReglagesView.vue';
import AidesView from '@/views/AidesView/AidesView.vue';
import TechniciensView from '@/views/TechniciensView/TechniciensView.vue';
import ClientsView from '@/views/ClientsView/ClientsView.vue';

const routes = [
    {
        path: '/',
        name: 'Dashboard',
        component: DashboardView
    },
    {
        path: '/interventions',
        name: 'Interventions',
        component: InterventionsView
    },
    {
        path: '/contrats',
        name: 'Contrats',
        component: ContratsView
    },
    {
        path: '/reglages',
        name: 'Reglages',
        component: ReglagesView
    },
    {
        path: '/aides',
        name: 'Aides',
        component: AidesView
    },
    {
        path: '/techniciens',
        name: 'Techniciens',
        component: TechniciensView
    },
    {
        path: '/clients',
        name: 'Clients',
        component: ClientsView
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
