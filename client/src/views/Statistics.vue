<template>
  <section class="hero text-center">
    <div class="map-box">
      <div class="info-box">
        <a :href="statistics.tiny_url" target="_blanck">
          <span class="item-tinyurl">{{statistics.tiny_url}}</span>
        </a>
        <span class="item-url">{{statistics.url}}</span>
      </div>
      <calendar-heatmap
        :values="statistics.dates ? statistics.dates: []"
        :range-color="mapColors"
        :endDate="currentDate"
        :max="10"
        tooltip-unit="requests"
      />
    </div>
  </section>
</template>

<script>
import { CalendarHeatmap } from "vue-calendar-heatmap";
import store from "@/store";
import * as moment from "moment";
export default {
  name: "Statistics",
  components: {
    CalendarHeatmap
  },
  data() {
    return {
      mapColors: ["ebedf0", "#c0ddf9", "#73b3f3", "#3886e1", "#17459e"],
      currentDate: moment()
        .add(2, "day")
        .format("YYYY-MM-DD")
    };
  },
  computed: {
    loading() {
      return store.state.loadingStatistics;
    },
    statistics() {
      return store.state.statistics;
    }
  },
  mounted() {
    store.dispatch("getStatistics", this.$route.params.id);
  }
};
</script>

<style lang="scss">
@import "node_modules/vue-calendar-heatmap/dist/vue-calendar-heatmap";

.map-box {
  max-width: 900px;
  margin: 0 auto;
}

.item-url {
  font-size: 14px;
  display: block;
}

.item-tinyurl {
  font-size: 20px;
  font-weight: bold;
  color: #1274ed;
  transition: transform 1s;
  display: block;
}

.info-box {
  width: 90%;
  text-align: left;
  text-align: left;
  padding: 0 30px 20px 30px;

  a {
    text-decoration: none;
    display: block;
  }
}

</style>
