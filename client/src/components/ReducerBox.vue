<template>
  <div class="hero-form newsletter-form field field-grouped is-revealing">
    <div class="control control-expanded">
      <input class="input" type="url" name="url" placeholder="Enter your url" v-model="url">
    </div>
    <div class="control">
      <button
        id="button-reduce"
        class="button button-primary button-block button-shadow"
        @click="onClickReduceButton"
      >{{buttonText}}</button>
    </div>
  </div>
</template>

<script>
import store from "@/store";
export default {
  name: "ReducerBox",
  data: () => {
    return {
      url: ""
    };
  },
  computed: {
    loading() {
      return store.state.loading;
    },
    buttonText() {
      return this.loading ? "Reducing..." : "Reduce";
    }
  },
  methods: {
    onClickReduceButton() {
      store.dispatch("reduceUrl", this.url);
    }
  }
};
</script>

<style>
#button-reduce {
  width: 150px;
}
</style>
