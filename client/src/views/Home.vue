<template>
  <div>
    <section class="hero text-center">
      <div class="container-sm">
        <div class="hero-inner">
          <h1 class="hero-title h2-mobile mt-0 is-revealing">Reduce the length of your links</h1>
          <p
            class="hero-paragraph is-revealing"
          >Create and share shorter urls. You can reduce long urls, simply enter your url and press the reduce button to get your TinyUrl!</p>
          <reducer-box/>
          <div class="hero-browser">
            <list-tiny-url/>
          </div>
        </div>
      </div>
    </section>
    <section class="features section text-center">
      <div class="container">
        <div class="features-inner section-inner has-bottom-divider">
          <div class="features-wrap">
            <div class="feature is-revealing">
              <div class="feature-inner">
                <div class="feature-icon">
                  <svg width="80" height="80" xmlns="http://www.w3.org/2000/svg">
                    <g fill="none" fill-rule="evenodd">
                      <path
                        d="M48.066 61.627c6.628 0 10.087-16.79 10.087-23.418 0-6.627-5.025-9.209-11.652-9.209C39.874 29 24 42.507 24 49.135c0 6.627 17.439 12.492 24.066 12.492z"
                        fill-opacity="0.24"
                        fill="#A0A6EE"
                      ></path>
                      <path
                        d="M26 54l28-28"
                        stroke="#838DEA"
                        stroke-width="2"
                        stroke-linecap="square"
                      ></path>
                      <path
                        d="M26 46l20-20M26 38l12-12M26 30l4-4M34 54l20-20M42 54l12-12"
                        stroke="#767DE1"
                        stroke-width="2"
                        stroke-linecap="square"
                      ></path>
                      <path
                        d="M50 54l4-4"
                        stroke="#838DEA"
                        stroke-width="2"
                        stroke-linecap="square"
                      ></path>
                    </g>
                  </svg>
                </div>
                <h3 class="feature-title">Lorem ipsum</h3>
                <p
                  class="text-sm"
                >Suspendisse bibendum nibh non purus ullamcorper aliquet. Donec suscipit, dui at lacinia auctor, turpis metus rhoncus felis, pharetra pharetra sem nisi quis nisi.</p>
              </div>
            </div>
            <div class="feature is-revealing">
              <div class="feature-inner">
                <div class="feature-icon">
                  <svg width="80" height="80" xmlns="http://www.w3.org/2000/svg">
                    <g fill="none" fill-rule="evenodd">
                      <path
                        d="M48.066 61.627c6.628 0 10.087-16.79 10.087-23.418 0-6.627-5.025-9.209-11.652-9.209C39.874 29 24 42.507 24 49.135c0 6.627 17.439 12.492 24.066 12.492z"
                        fill-opacity="0.24"
                        fill="#75ABF3"
                      ></path>
                      <path
                        d="M34 52V35M40 52V42M46 52V35M52 52V42M28 52V28"
                        stroke="#4D8EF7"
                        stroke-width="2"
                        stroke-linecap="square"
                      ></path>
                    </g>
                  </svg>
                </div>
                <h3 class="feature-title">Lorem ipsum</h3>
                <p
                  class="text-sm"
                >Pellentesque efficitur auctor imperdiet. Nam turpis justo, sodales eu aliquet at, laoreet sit amet lectus. Mauris quis tellus et sapien laoreet malesuada. Nullam egestas nec tellus ut vulputate.</p>
              </div>
            </div>
          </div>
          <div class="features-wrap">
            <div class="feature is-revealing">
              <div class="feature-inner">
                <div class="feature-icon">
                  <svg width="80" height="80" xmlns="http://www.w3.org/2000/svg">
                    <g fill="none" fill-rule="evenodd">
                      <path
                        d="M48.066 61.627c6.628 0 10.087-16.79 10.087-23.418 0-6.627-5.025-9.209-11.652-9.209C39.874 29 24 42.507 24 49.135c0 6.627 17.439 12.492 24.066 12.492z"
                        fill-opacity="0.32"
                        fill="#FF97AC"
                      ></path>
                      <path
                        stroke="#FF6D8B"
                        stroke-width="2"
                        stroke-linecap="square"
                        d="M49 45h6V25H35v6M43 55h2v-2M25 53v2h2M27 35h-2v2"
                      ></path>
                      <path
                        stroke="#FF6D8B"
                        stroke-width="2"
                        stroke-linecap="square"
                        d="M43 35h2v2M39 55h-2M33 55h-2M39 35h-2M33 35h-2M45 49v-2M25 49v-2M25 43v-2M45 43v-2"
                      ></path>
                    </g>
                  </svg>
                </div>
                <h3 class="feature-title">Lorem ipsum</h3>
                <p
                  class="text-sm"
                >Donec pretium, ligula sit amet ultrices lobortis, augue enim elementum eros, ac facilisis sem turpis eu ipsum. Phasellus scelerisque arcu at malesuada ultrices.</p>
              </div>
            </div>
            <div class="feature is-revealing">
              <div class="feature-inner">
                <div class="feature-icon">
                  <svg width="80" height="80" xmlns="http://www.w3.org/2000/svg">
                    <g transform="translate(24 25)" fill="none" fill-rule="evenodd">
                      <path
                        d="M24.066 36.627c6.628 0 10.087-16.79 10.087-23.418C34.153 6.582 29.128 4 22.501 4 15.874 4 0 17.507 0 24.135c0 6.627 17.439 12.492 24.066 12.492z"
                        fill-opacity="0.32"
                        fill="#A0EEE5"
                      ></path>
                      <circle
                        stroke="#39D8C8"
                        stroke-width="2"
                        stroke-linecap="square"
                        cx="5"
                        cy="4"
                        r="4"
                      ></circle>
                      <path
                        stroke="#39D8C8"
                        stroke-width="2"
                        stroke-linecap="square"
                        d="M23 22h8v8h-8zM11 10l9 9"
                      ></path>
                    </g>
                  </svg>
                </div>
                <h3 class="feature-title">Lorem ipsum</h3>
                <p
                  class="text-sm"
                >Quisque risus dolor, venenatis nec mi eget, sagittis porttitor eros. Etiam eget nibh at magna fermentum semper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import ReducerBox from "@/components/ReducerBox";
import ListTinyUrl from "@/components/ListTinyUrl";

export default {
  name: "home",
  components: {
    ReducerBox,
    ListTinyUrl
  },
  data: () => {
    return {
      a: 1
    };
  }
};
</script>
