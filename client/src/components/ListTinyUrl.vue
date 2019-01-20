<template>
    <div class="result">
      <ul>
        <li v-for="item in list" :key="item.url">
          <div class="item-info">
            <a :href="item.tiny_url" target="_blanck">
              <span class="item-tinyurl">{{item.tiny_url}}</span>
            </a>
            <span class="item-url">{{item.url}}</span>
          </div>
          <button type="button"
            v-clipboard:copy="item.tiny_url"
            v-clipboard:success="onCopy"
            v-clipboard:error="onError">
              Copy!
          </button>
        </li>
      </ul>
    </div>
</template>

<script>
import store from "@/store";
export default {
  name: "ListTinyUrl",
  data() {
    return {
      listSize: 3
    };
  },
  computed: {
    list() {
      return store.state.urlList.slice(0, this.listSize);
    }
  },
  methods: {
    onCopy: function() {
      alert("Tiny url copied!");
    },
    onError: function() {
      alert("Failed to copy url");
    }
  }
};
</script>

<style lang="scss" scoped>
.result {
  width: 800px;

  ul {
    list-style: none;
    text-align: left;
  }

  ul li {
    display: flex;
    justify-content: space-evenly;
    padding: 20px;
  }

  ul li a {
    text-decoration: none;
    display: block;
  }

  ul li span {
    display: block;
  }

  ul li button {
    border: 1px solid #4992f0;
    border-radius: 5px;
    color: #1274ed;
    height: 30px;
    font-size: 15px;
    cursor: pointer;
  }
}

.item-url {
  font-size: 14px;
}

.item-tinyurl {
  font-size: 20px;
  font-weight: bold;
  color: #1274ed;
}

.item-info {
  width: 90%;
}
</style>
