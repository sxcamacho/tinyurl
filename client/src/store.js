import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    urlList: [],
    loading: false,
    error: "",
    statistics: {},
    loadingStatistics: false
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
    },
    setLoadingStatistics(state, value) {
      state.loading = value;
    },
    setStatistics(state, data) {
      state.statistics = data;
    }
  },
  actions: {
    reduceUrl(context, url) {
      context.commit("setErrorMessage", "");
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
    },
    getStatistics(context, id) {
      context.commit("setErrorMessage", "");
      context.commit("setLoadingStatistics", true);
      let request = Vue.axios.get(
        `${process.env.VUE_APP_API_URL}/statistics/${id}`
      );
      request.then(response => {
        const { tiny_id, tiny_url, url } = response.data;
        var result = {
          tiny_id,
          tiny_url,
          url,
          dates: response.data.statistics.map(data => JSON.parse(data))
        };
        context.commit("setStatistics", result);
        context.commit("setLoadingStatistics", false);
      });
      request.catch(error => {
        context.commit("setLoadingStatistics", false);
        context.commit("setErrorMessage", error);
      });
    }
  }
});
