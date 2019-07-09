<template>
    <div>
        <titlebar
            topTitle="商品详情"
            :back="myback"
        ></titlebar>
        <div class="details-img">
            <img src= alt="">
        </div>
    </div>
</template>
<script>
import titlebar from './TitleBar'
export default {
    data(){
        return{
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
        loadDetails(){
           var url=`http://127.0.0.1:3000/details`
           var obj={pid:this.pid}
           this.axios.get(url,{params:obj}).then(result=>{
               var rows=this.proList.concat(result.data.data);
               this.proList=rows
               console.log(rows)
           })
        }
    }
}
</script>
<style>
    @import "../assets/css/product.css";
</style>
