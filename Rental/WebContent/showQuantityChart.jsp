<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="cn.jmu.po.QuantityList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>地区房源数量</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/charts-stat/ecStat.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
 <link href="styles/common.css" rel="stylesheet">
    <script src="scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="scripts/Plugin/echarts.min.js"></script>
    <script src="scripts/Plugin/bmap.min.js"></script>
    <script src="http://api.map.baidu.com/api?v=2.0&ak=LelFSt6BfykGf8m3PB5zr8LaXAG2cMg6"></script>
    <script src="scripts/common.js"></script>
    <script src="scripts/index.js"></script>
    <script src="scripts/Plugin/laydate/laydate.js"></script>
</head>
<body>



<header class="header left">
    <div class="left nav">
        <ul>
            <li><i class="nav_1"></i><a href="${pageContext.request.contextPath}/queryPriceList.do">价格</a> </li>
            <li><i class="nav_2"></i><a href="${pageContext.request.contextPath}/queryAreaAPList.do">地区平均价格</a> </li>
            <li><i class="nav_3"></i><a href="${pageContext.request.contextPath}/queryHouseAPList.do">户型平均价格</a> </li>
            <li   class="nav_active"><i class="nav_4"></i><a href="${pageContext.request.contextPath}/queryQuantityList.do">地区房源数量</a> </li>
             <li><i class="nav_5"></i><a href="index.jsp">退出</a> </li>
            </ul>
    </div>
    <div class="header_center left" style="position:relative">
        
        <h2><strong>大数据展示</strong></h2>

    </div>
    <div class="right nav text_right">
        <ul>

        </ul>
    </div>

</header>
<!--内容部分-->
<div class="con left">
<div id="container" style="background-color:rgba(255,255,255,0.2)">
	<div id="output">
		<div class="containerT">
			<div id="echartstest" style="height:50rem;width:100%;margin:0 auto;">

		</div>
	</div>
</div>


    </div>






<script type="text/javascript">
    $(function(){
        Victor("container", "output");   //登录背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });
</script>

</div>
<script>
var mychar = echarts.init(document.getElementById("echartstest"));
var name1 = "${pricelist[0].region}";
var name2 = "${pricelist[1].region}";
var name3 ="${pricelist[2].region}";
var name4 = "${pricelist[3].region}";
var name5 = "${pricelist[4].region}";
var name6 = "${pricelist[5].region}";
var name7 = "${pricelist[6].region}";
var dataname = [name1,name2,name3,name4,name5,name6,name7];
var val1 = ${pricelist[0].rentalNum};
var val2 = ${pricelist[1].rentalNum};
var val3 = ${pricelist[2].rentalNum};
var val4 = ${pricelist[3].rentalNum};
var val5 = ${pricelist[4].rentalNum};
var val6 = ${pricelist[5].rentalNum};
var val7 = ${pricelist[6].rentalNum};
var datavalue =[
                {value:val1, name:"思明"},
                {value:val2, name:"湖里"},
                {value:val3, name:"集美"},
                {value:val4, name:"海沧"},
                {value:val5, name:"翔安"},
                {value:val6, name:"同安"},
                {value:val7, name:"角美"}
            ];
option = {
	    title : {
	        text: '厦门各区租房数量比例表',
	        textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)",
	        textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'lef aname',
	        textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
	    },
	    series : [
	        {
	            name: '厦门租房',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	          
	           	data:datavalue,
	            itemStyle: { 
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ], 
};
mychar.setOption(option);
</script>
</body>
</html>