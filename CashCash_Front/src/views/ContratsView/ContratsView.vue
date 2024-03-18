<template>
    <div class="ContratContainer" v-for="i in Contrats" :key="i.id">
        <div class="Contrat">
            <div class="left contentBlock">
                <div style="display: flex; align-items: center; font-size: 15px;">
                    <h1>Num Contrat {{ i.NumContrat }} </h1><a class="technicienLabel"> - NumClient {{ i.clientId }}</a>
                </div>
                <p> dateSignature {{ i.dateSignature }} </p>
                <p> dateecheance {{ i.dateecheance }} </p>
            </div>
            <div class="right contentBlock df">
                <a class="roundButton df"><img src="../../assets/Icons/download.svg" /></a>
                <div @click="ContratOpen = !ContratOpen">
                    <a class="roundButton df"><img src="../../assets/Icons/edit.svg" /></a>
                </div>
            </div>
        </div>
        <div v-if="ContratOpen" style="margin-top: 2%;">
            <a>dateSignature</a>
            <input class="inputForm" v-model="dateSignature" type="date" value="`{{ i.dateSignature }}`" />
            <a>dateecheance</a>
            <input class="inputForm" v-model="dateecheance" type="date" />
            <a>Technicien</a>
            <select class="inputForm" v-model="techId">
                <option>Antoine</option>
            </select>
            <a>Client</a>
            <select class="inputForm" v-model="clientId">
                <option>Auchan</option>
            </select>
            <a>Date</a>
            <input class="inputForm" type="date" />
            <a class="roundButton df" @click="createContrat"><img src="../../assets/Icons/validate.svg" /></a>
        </div>
    </div>
</template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({

    data() {
        return {
            Contrats: [],
            ContratOpen: false,
        };
    },
    components: {},
    created() { this.fetchData() },
    methods: {
        fetchData() {
            this.Contrats = [];
            this.loading = true;

            fetch(`${this.$api}/Contrat`)
                .then(r => r.json())
                .then(json => {
                    this.Contrats = json;
                    this.loading = false;
                    return;
                });
        },
        ContratsFromTechnicien(iId) {
            return this.Contrats.filter(p => p.techId == iId)
        },
        createContrat() {
            const requestOptions = {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({
                    // ExerciseId: this.$route.params.exerciseId,
                    ContraId: 0,
                    ClientId: this.ClientId,
                    NumContrat: this.$[`i.NumContrat`]

                })
            };
            fetch(`${this.$api}/contrats`, requestOptions)
                .then(response => {
                    if (response.ok) { alert("Le contrat a bien été ajoutée") }
                    else { alert("Le contrat  n'a pas été ajoutée") }
                    this.fetchData()
                })
                .then(response => response.json())
            // .then(data => (this.postId = data.id));
        }
    }
});
</script>

<style>
@import './ContratsView.scss';
</style>
