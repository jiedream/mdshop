<template>
    <div>
        <!-- 头部 -->
        <titlebar
            topTitle="米豆商城"
            :back="myback"
        ></titlebar>
        <!-- 小喇叭广告 -->
        <van-notice-bar mode="closeable" >
            国内领先的综合网上购物平台。送货更准时，好货更超值，上新货更快。囊括手机、家用电器、生活家居、超市、母婴、电脑、数码、百货、运动户外、生鲜、汽车、金融等类目。全国联保，正品行货。可门店自提，支持货到付款，智慧零售，服务美好生活！
        </van-notice-bar>
        <!-- 轮播图 -->
        <van-swipe :autoplay="3000" indicator-color="white">
            <div class="product-search"></div>
            <van-swipe-item v-for="(item,index) of imgList" :key="index">
                <img :src="item.img" alt="" id="img">
            </van-swipe-item>
        </van-swipe>
        <!-- 首页分类 -->
        <div class="product-list">
            <div v-for="(item,index) of classify" :key="index">
                <img :src="item.img" alt="">
                <p>{{item.title}}</p>
            </div>
        </div>
        <!-- 首页商品信息 -->
        <div class="product-container">
            <div v-for="(item,index) of product" :key="index" @click="jumpDetails(item.pid)">
                <img :src="item.img">
                <p>{{item.title}}</p>
                <span>￥{{item.price}}</span>
            </div>
        </div>
        <div style="height:50px;"></div>
        <!-- 底部tabbar -->
        <van-tabbar v-model="active" route>
            <van-tabbar-item name="home" icon="home-o">首页</van-tabbar-item>
            <van-tabbar-item name="search" icon="search">订单</van-tabbar-item>
            <van-tabbar-item name="friends" icon="friends-o" to="/cart">购物车</van-tabbar-item>
            <van-tabbar-item name="setting" icon="setting-o">我的</van-tabbar-item>
        </van-tabbar>
    </div>
</template>
<script>
import titlebar from './TitleBar'
export default {
    data(){
        return{
            active:"home",
            imgList:[],  //保存服务器首页轮播图数据
            classify:[],   //保存服务器首页分类图
            product:[]     //首页商品信息
        }
    },
    created(){
        this.loadcar();
        this.loadify();
        this.loadproduct();
    },
    components:{
        'titlebar':titlebar
    },
    methods:{
        // 头部组件回退
        myback(){
            this.$router.push({
                path:'/'
            })
        },
        // 跳转到详情页面
        jumpDetails(id){
            this.$router.push({
                path:'/details',
                query:{id}
            })
        },
        // 数据库加载轮播图
        loadcar(){
            var url="http://127.0.0.1:3000/carousel";
            this.axios.get(url).then(result=>{
                var rows=this.imgList.concat(result.data.data);
                this.imgList=rows;
            })
        },
        // 数据库加载分类图
        loadify(){
            var url="http://localhost:3000/classify";
            this.axios.get(url).then(result=>{
                var rows=this.classify.concat(result.data.data);
                this.classify=rows;
            })
        },
        // 数据库加载首页商品信息
        loadproduct(){
            var url="http://localhost:3000/product";
            this.axios.get(url).then(result=>{
                var rows=this.product.concat(result.data.data);
                this.product=rows;
            })
        }
    }
}
</script>
<style>
    @import "../assets/css/home.css";
</style>