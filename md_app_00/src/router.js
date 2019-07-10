import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)


import Home from './components/home.vue'
import dingdan from './components/dingdan.vue'
import ShopCart from './components/shopcart.vue'
import details from './components/details.vue'
import my from './components/my.vue'
export default new Router({
  routes: [
    {path:'/dingdan',component:dingdan},
    {path:'/cart',component:ShopCart},
    {path:'/my',component:my},
    {path:'/details',component:details},
    {path:'/',component:Home}
  ]
})