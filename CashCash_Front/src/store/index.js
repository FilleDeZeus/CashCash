import { createStore } from 'vuex';

export default createStore({
    state() {
        return {
        user: null, 
        };
    },
    mutations: {
        setUser(state, user) {
        state.user = user;
        }
    },
    actions: {
        login({ commit }, user) {
        commit('setUser', user);
        },
        logout({ commit }) {
        commit('setUser', null);
        }
    },
    getters: {
        userRole: (state) => state.user ? state.user.role : '',
    }
});
