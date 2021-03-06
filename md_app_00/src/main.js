import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'


import Vant from 'vant'
import 'vant/lib/index.css'
Vue.use(Vant)


import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css' 
Vue.use(MintUI)



// 引入axios.js
import axios from "./axios"
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
