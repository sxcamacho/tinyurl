import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";
import VueAxios from "vue-axios";
import VueClipboard from "vue-clipboard2";

Vue.config.productionTip = false;
Vue.use(VueAxios, axios);

VueClipboard.config.autoSetContainer = true;
Vue.use(VueClipboard);

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
