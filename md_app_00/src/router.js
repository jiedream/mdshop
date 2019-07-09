import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)


import Home from './components/home.vue'

import ShopCart from './components/shopcart.vue'
import details from './components/details.vue'
import my from './components/my.vue'
export default new Router({
  routes: [
    
    {path:'/cart',component:ShopCart},
    {path:'/details',component:details},
    {path:'/my',component:my},
    {path:'/',component:Home}
  ]
})