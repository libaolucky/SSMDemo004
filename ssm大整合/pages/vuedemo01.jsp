<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/9/15
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第一个vue demo</title>
     <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
      <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

</head>
<body>
<div>
学习 插值 表达式 {{}}
 vue 常用在 单个页面项目中，什么叫做单个页面项目，常用于 手机移动端，指的是整个项目 只有1个页面
通过 锚点  来 调转 没有 a ，这个锚点的跳转就叫做路由
    单个页面项目的  优缺点：
 优点： 都是html， 代码运行流畅, 可以有很多组件，可以重复使用
 缺点： 不利于seo 百度的收录
</div>

    <h1>讲解 jquery和 vue的不同</h1>
    <div>
        jquery:他是 dom 驱动的，所有看到的页面都要 一行一行的 把代码 写出来；不是自动的， 是手动的
    <h2 id="jq-helloWord">
         <%--对比一下，在div中 插入数据  你好，世界--%>
    </h2>
    </div>

    <div id="app">
        vue 因为是单页面的，所以 必须只有1个跟标签，以上的 h1 和 div都不归vue负责<br>
        <h2>
            {{}} 双括弧是 插值表达式 <br>
            {{sayHello}} <br>
            {{sayEating}} <br>
            {{lightLine}} <br>


        </h2>

    </div>




<script>
    //使用 jquery
    $(function () {
        // js的思想，是找到id xx 的DOM,给他添加数据
        //如果我想修改 显示效果，改成 你好，超市  ，就需要改变 jq的代码
        //那么久比较麻烦， 因为 你好，世界 ，没有 存统一的变量的地方
        //jquery: 缺点：就是数据没有统一的 位置可以存储
        $("#jq-helloWord").text("你好，世界！");
    })

    //学习 vue, vue 和java很像很像
        var vm=new Vue({
            // new Vue() 括号中，小括号中，一般放的都是 {}，而大括号就是json ，对象，k-v结构
            //这个大括弧中， 放的就是 vue的选项，选项在vue官网可以看到， 选项有多少中呢？
            // 作业2： 写出 vue 选项的 思维导图！！
            el:'#app'  // 把html中的div id为app的dom 作为 挂载点
                     //什么叫做挂载点： vue 是以数据驱动的， new vue 中都是诞生数据
                    //有了数据， 就需要 一个 dom，显示数据，  张三是元数据，
            ,data:{
                sayHello:"你好世纪",
                sayEating:"加油,干饭人",
                lightLine:"发射动感光波"
            }
        });

</script>


</body>
</html>
