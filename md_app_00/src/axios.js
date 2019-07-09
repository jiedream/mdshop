// 引入vue
import Vue from "vue"
// 引入axios库
import axios from "axios"
// 设置跨域请求保存session
axios.defaults.withCredentials=true
// 设置请求服务器基础罗静
axios.defaults.baseURL="http:127.0.0.1:3000";
// 将axios注册  Vue实例
Vue.prototype.axios=axios
// 在main.js引入axios