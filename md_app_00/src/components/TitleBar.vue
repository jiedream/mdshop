<template>
    <div>
        <div class="header-top">
            <span >
                <van-icon name="arrow-left" @click="back"></van-icon>
            </span>
            <span>{{topTitle}}</span>
            <span>...</span>
        </div>
    </div>
</template>
<script>
export default {
    props:{
        topTitle:{default:''},
        back:{type:Function}
    },
    data(){
        return{}
    }
}
</script>
<style style="scoped">
    .header-top{
        width: 100%;
        height: 50px;
        background-color:#ccc;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }
</style>

