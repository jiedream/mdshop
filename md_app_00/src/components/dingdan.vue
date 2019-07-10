<template>
  <div>
    <!-- 头部 -->
    <titlebar
      topTitle="我的订单"
      :back="myback"
    ></titlebar>
    <!-- 购物车列表 -->
    <van-card
      num="2"
      price="2.00"
      desc="描述信息"  
      title="商品标题"
      thumb="https://img.yzcdn.cn/vant/t-thirt.jpg"
    >
      <div slot="tags">
        <van-tag plain type="danger">标签</van-tag>
        <van-tag plain type="danger">标签</van-tag>
      </div>
      <div slot="footer">
        <van-button size="mini">按钮</van-button>
        <van-button size="mini">按钮</van-button>
      </div>
    </van-card>
  </div>
</template>

<<script>
import titlebar from './TitleBar'
export default {
  data(){
    return{

    }
  },
  cretated(){
    this.loadCat()
  },
  components:{
    'titlebar':titlebar
  },

  methods:{
    // 头部回退
    myback(){
      this.$router.push({
          path:'/'
      })
    },
    // 加载完成后载入购物车信息
    
  },

}
</script>>
<style>

</style>