<template>
  <div class="dashboardAssistant">
    <div class="bonjour">
      <img src="@/assets/icons/vert/bonjour.svg" alt="Bonjour" />
      <p>Bonjour Antoine</p>
    </div>
    <div class="cartesDashboard">
      <CarteDashboard
        title="Techniciens"
        :count="stats.techniciensCount"
        iconSrc="src/assets/icons/vert/technicienVert.svg" 
      />
      <CarteDashboard
        title="Assistants"
        :count="stats.assistantsCount"
        iconSrc="src/assets/icons/vert/assistantVert.svg" 
      />
      <CarteDashboard
        title="Contrats"
        :count="stats.contratsCount"
        iconSrc="src/assets/icons/vert/contratVert.svg" 
      />
    </div>
    <div class="compte" >
      <p>Ce mois-ci</p>
      <p>intervention planifiées</p>
      <p>Interventions terminées</p>
    </div>
</div>
</template>

<script>
import CarteDashboard from './Carte/Carte.vue';

export default {
  components: {
    CarteDashboard,
  },
  data() {
    return {
      stats: {
        techniciensCount: 0,
        assistantsCount: 0,
        contratsCount: 0,
      },
      loading: true,
    };
  },

  created() {
    this.fetchStats();
  },
  methods: {
    fetchStats() {
      fetch('http://localhost:3000/api/stats/techniciens')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.stats.techniciensCount = data.techniciensCount;
          this.loading = false;
        })
        .catch(error => {
          console.error("Erreur lors de la récupération des statistiques: ", error);
          this.loading = false;
        });
      fetch('http://localhost:3000/api/stats/assistants')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.stats.assistantsCount = data.assistantsCount;
          this.loading = false;
        })
        .catch(error => {
          console.error("Erreur lors de la récupération des statistiques: ", error);
          this.loading = false;
        });
      fetch('http://localhost:3000/api/stats/contrats')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.stats.contratsCount = data.contratsCount;
          this.loading = false;
        })
        .catch(error => {
          console.error("Erreur lors de la récupération des statistiques: ", error);
          this.loading = false;
        });

    }
  }
};
</script>

<style>
@import './DashboardAssitant.scss';
</style>
