// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },

  /*

  Uncomment to fix

  experimental: {
    inlineSSRStyles: false,
  },
  */

  modules: [
    '@nuxtjs/tailwindcss',
  ],
})
