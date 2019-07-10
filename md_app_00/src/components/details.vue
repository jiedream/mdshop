<template>
    <div>
        <titlebar
            topTitle="商品详情"
            :back="myback"
        ></titlebar>
        <div class="details-img">
            <img :src="proList.img" alt="">
        </div>
        <div class="details-content">
            <h2>{{proList.title}}</h2>
            <span>{{proList.subtitle}}</span>
            <p>特惠价￥{{proList.price}}</p>
        </div>
        <van-rate v-model="value" />
        <!-- 底部立即购买 -->
        <van-goods-action>
            <van-goods-action-icon
                icon="chat-o"
                text="客服"
                @click="onClickIcon"
            />
            <van-goods-action-icon
                icon="cart-o"
                text="购物车"
                @click="onClickCart"
            />
            <van-goods-action-button
                type="warning"
                text="加入购物车"
                @click="onClickButton(proList.pid)"
            />
            <van-goods-action-button
                type="danger"
                text="立即购买"
                @click="onClickIcon"
            />
        </van-goods-action>
    </div>
</template>
<script>
import titlebar from './TitleBar'
export default {
    data(){
        return{
             value: 3,
             pid:this.$route.query.id,
             proList:[]   //保存服务器返回的商品列表
        }
    },
    created(){
        this.loadDetails();
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
        // 跳转成功加载服务器商品数据
        loadDetails(){
           var url=`http://127.0.0.1:3000/details`
           var obj={pid:this.pid}
           this.axios.get(url,{params:obj}).then(result=>{
               var rows=this.proList.concat(result.data.data)[0];
               this.proList=rows
               console.log(rows)
           })
        },
        onClickCart(){
            this.$router.push({
                path:'/cart'
            })
        },
        onClickIcon() {
            this.$dialog.alert({
                message: '暂未开通'
            });
        },
        onClickButton(id) {
            this.$router.push({
                path:'/cart',
                query:{id}
            })
        }
    }
}
</script>
<style>
    @import "../assets/css/details.css";
</style>
