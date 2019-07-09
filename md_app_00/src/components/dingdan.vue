<template>
    <div>
        <titlebar
            topTitle="我的订单"
            :back="myback"
        ></titlebar>
        <h1>订单</h1>
    </div>
</template>
<script>
import titlebar from './TitleBar'
export default {
    components:{
        'titlebar':titlebar
    },
    methods:{
        myback(){
            console.log(1)
        }
    }
}
</script>
<style>
    
</style>