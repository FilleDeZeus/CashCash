<template>
    <div class="carteDashboard">
        <div class="icon">
            <img :src="iconSrc"/>
        </div>
        <div class="details">
            <h3>{{ title }}</h3>
            <p class="number">{{ count }}</p>
        </div>
    </div>
</template>
<script>
export default {
props: {
    title: String,
    count: Number,
    iconSrc: String
}
};
</script>

<style>
@import './Carte.scss';
</style>
