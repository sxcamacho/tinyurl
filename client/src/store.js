import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    urlList: [],
    loading: false,
    error: ""
  },
  mutations: {
    setLoading(state, value) {
      state.loading = value;
    },
    setErrorMessage(state, error) {
      state.error = error;
    },
    addUrl(state, url) {
      state.urlList.unshift(url);
    }
  },
  actions: {
    reduceUrl(context, url) {
      context.commit("setLoading", true);
      let request = Vue.axios.post(
        `${process.env.VUE_APP_API_URL}/data/shorten`,
        { url }
      );
      request.then(response => {
        context.commit("addUrl", response.data);
        context.commit("setLoading", false);
      });
      request.catch(error => {
        context.commit("setLoading", false);
        context.commit("setErrorMessage", error);
      });
    }
  }
});
