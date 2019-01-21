<template>
  <div id="app">
    <div class="is-boxed has-animations">
      <div class="body-wrap boxed-container">
        <header class="site-header">
          <div class="container">
            <div class="site-header-inner">
              <div class="brand header-brand">
                <h1 class="m-0">
                  <router-link to="/">
                    <svg
                      width="32"
                      height="32"
                      viewBox="0 0 32 32"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <title>TinyUrl</title>
                      <defs>
                        <linearGradient x1="100%" y1="0%" x2="0%" y2="100%" id="logo-gradient-b">
                          <stop stop-color="#39D8C8" offset="0%"></stop>
                          <stop stop-color="#BCE4F4" offset="47.211%"></stop>
                          <stop stop-color="#838DEA" offset="100%"></stop>
                        </linearGradient>
                        <path
                          d="M32 16H16v16H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h28a2 2 0 0 1 2 2v14z"
                          id="logo-gradient-a"
                        ></path>
                        <linearGradient x1="23.065%" y1="25.446%" y2="100%" id="logo-gradient-c">
                          <stop stop-color="#1274ED" stop-opacity="0" offset="0%"></stop>
                          <stop stop-color="#1274ED" offset="100%"></stop>
                        </linearGradient>
                      </defs>
                      <g fill="none" fill-rule="evenodd">
                        <mask id="logo-gradient-d" fill="#fff">
                          <use xlink:href="#logo-gradient-a"></use>
                        </mask>
                        <use fill="url(#logo-gradient-b)" xlink:href="#logo-gradient-a"></use>
                        <path
                          fill="url(#logo-gradient-c)"
                          mask="url(#logo-gradient-d)"
                          d="M-16-16h32v32h-32z"
                        ></path>
                      </g>
                    </svg>
                  </router-link>
                </h1>
              </div>
            </div>
          </div>
        </header>

        <main>
          <router-view/>
        </main>

        <footer class="site-footer text-light">
          <div class="container">
            <div class="site-footer-inner">
              <div class="brand footer-brand">
                <a href="#">
                  <svg
                    width="32"
                    height="32"
                    viewBox="0 0 32 32"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <title>Ava</title>
                    <defs>
                      <path
                        d="M32 16H16v16H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h28a2 2 0 0 1 2 2v14z"
                        id="logo-gradient-footer-a"
                      ></path>
                      <linearGradient x1="50%" y1="50%" y2="100%" id="logo-gradient-footer-b">
                        <stop stop-color="#FFF" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFF" offset="100%"></stop>
                      </linearGradient>
                    </defs>
                    <g fill="none" fill-rule="evenodd">
                      <mask id="logo-gradient-footer-c" fill="#fff">
                        <use xlink:href="#logo-gradient-footer-a"></use>
                      </mask>
                      <use fill-opacity="0.32" fill="#FFF" xlink:href="#logo-gradient-footer-a"></use>
                      <path
                        fill="url(#logo-gradient-footer-b)"
                        mask="url(#logo-gradient-footer-c)"
                        d="M-16-16h32v32h-32z"
                      ></path>
                    </g>
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
  </div>
</template>

<style lang="scss">
@import "assets/styles/style.scss";
</style>
