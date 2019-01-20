<template>
    <div class="result">
      <ul>
        <li v-for="item in list" :key="item.url">
          <span class="item-tinyurl">{{item.tiny_url}}</span>
          <span class="item-url">{{item.url}}</span>
        </li>
      </ul>
    </div>
</template>

<script>
import store from "@/store";
export default {
  name: "ListTinyUrl",
  computed: {
    list() {
      return store.state.urlList;
    },
    loading() {
      return store.state.loading;
    }
  }
};
</script>

<style lang="scss" scoped>
.result {
  width: 800px;
  height: 450px;

  ul li span {
    display: block
  }
}
</style>
