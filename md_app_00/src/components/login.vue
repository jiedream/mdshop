<template>
    <div class="login-page">
        <van-cell-group class="from" style="boder:0;">
            <van-field class="input"
                v-model="username"
                required
                clearable
                label="用户名"
                right-icon="question-o"
                placeholder="请输入用户名"
                @click-right-icon="$toast('请输入用户名')"
                @blur="uname"
            />
            <p class="test" style="" v-show="testUname">
                用户名正确
            </p>
            <van-field class="input"
                v-model="password"
                type="password"
                label="密码"
                placeholder="请输入密码"
                required
                style="margin-top:30px;"
                @blur="upwd"
            />
            <span class="test" v-show="testUpwd">密码正确</span>
            <van-button @click="login" class="btn" block round plain type="primary" >登录</van-button >
        </van-cell-group>
    </div>
</template>
<script>
export default {
    data(){
        return {
            username:"",
            password:"",
            testUname:false,
            testUpwd:false
        }
    },
    methods:{
        // 获取焦点用户名密码提示信息
        uname(){
            if(this.username=="tom"){
                this.testUname=true
            }else{
                this.testUname=false
            }
        },
        upwd(){
            if(this.password=="123456"){
                this.testUpwd=true
            }else{
                this.testUpwd=false
            }
        },
        // 登录
        login(){
            // console.log(1)
            var url="login";
            var n=this.username;
            var p=this.password;
            var obj={uname:n,upwd:p};
            this.axios.get(url,{params:obj}).then(result=>{
                if(result.data.code === 1){
                    this.$router.push({
                        path:'/'
                    })
                }else{
                    this.$messagebox("消息",
                    result.data.msg)
                }
            })
        }
    }
}
</script>
<style scoped>
    .login-page{
        width: 100%;height: 100%;
        background:url("../../public/img/login/login.jpg") no-repeat;
        overflow: hidden;
        background-size:cover;
    }
    .from,.from>.input{
        margin-top:240px;
        color:red;
        background-color: rgba(0, 0, 0, 0.1);
    }
    .from>.input::placeholder{
        color:red;
    }
    .btn{
        margin-top: 50px;
        background-color:rgba(0, 0, 0, 0.1);
    }
    .testuname{
        width:100%;
        height:20px;
        margin-left:10px;
    }
</style>