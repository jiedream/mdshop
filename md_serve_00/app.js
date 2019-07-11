// 引入两个模块 express mysql
const express=require("express");
const mysql=require("mysql");
// 创建连接池
var pool=mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    port:3306,
    database:"md",
    connectionLimit:15
})
// 创建express对象
var server =express();
// 指定静态目录
server.use(express.static("public"));
// 处理跨域请求
const cors=require("cors");
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}));
// 添加session功能
const session=require("express-session");
server.use(session({
    secret:"128位字符串",
    resave:true,
    saveUninitialized:true
}))
// 绑定建监听端口
server.listen(3000);

//登录
server.get("/login",(req,res)=>{
    var sql="SELECT uid FROM";
    sql+=" md_user WHERE"; 
    sql+=" uname=? AND upwd=?";
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err)throw err;
        if(result.length==0){
          res.send({code:-1,msg:"用户名或密码有误"});
        }else{
          req.session.uid = result[0].uid 
          res.send({code:1,msg:"登录成功"});
        }
    });
})

// 轮播图
server.get("/carousel",(req,res)=>{
    var sql="SELECT cid,img FROM md_carousel"
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})
// 首页分类
server.get("/classify",(req,res)=>{
    var sql="SELECT aid,title,img FROM md_classify"
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})
// 首页商品信息
server.get("/product",(req,res)=>{
    var sql="SELECT pid,img,title,price FROM md_product"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})

// 商品详情页
server.get("/details",(req,res)=>{
    var sql="SELECT * FROM md_product WHERE pid=?";
    var pid=req.query.pid;
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"查询成功",data:result})
    })
})