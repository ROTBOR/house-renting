<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>地区平均价格</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
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
            <li  class="nav_active"><i class="nav_2"></i><a href="${pageContext.request.contextPath}/queryAreaAPList.do">地区平均价格</a> </li>
            <li><i class="nav_3"></i><a href="${pageContext.request.contextPath}/queryHouseAPList.do">户型平均价格</a> </li>
            <li><i class="nav_4"></i><a href="${pageContext.request.contextPath}/queryQuantityList.do">地区房源数量</a> </li>
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
<div id="container" style="background-color:rgba(255,255,255,0.5)">
	<div id="output">
		<div class="containerT">
			<div id="echartsPrice" style="height:30rem;width:50%;float:left;margin-top:5%">
			</div>
			<div id="echartsPrice_line"style="height:30rem;width:50%;float:right;margin-top:5%"></div>

		</div>
	</div>
</div>
        <div style="width:100%" class="div_any02 left ">
            <div style="width:100%"class="div_any_child div_height">
                <div class="div_any_title any_title_width"><img src="images/title_0.png">厦门市地图 </div>
                <div id="mapChart" style="width:97.5%;height:95%;display: inline-block;padding-left: 1.25%;padding-top:2.2%"></div>
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

<script type="text/javascript">
var smavg = ${smavg[0]};
var hlavg = ${hlavg[0]};
var hcavg = ${hcavg[0]};
var jmavg = ${jmavg[0]};
var jiaomeiavg = ${jiaomeiavg[0]};
var taavg = ${taavg[0]};
var xaavg = ${xaavg[0]};
var myChart = echarts.init(document.getElementById("echartsPrice"));
var myChart_line = echarts.init(document.getElementById("echartsPrice_line"));
myChart.setOption({
	title:{
		text:"厦门各区每平米价格对比饼图",
		 textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
	},
	tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)",
        textStyle:{
        	fontSize:"18",
        	color:"#ffffff",
        },
    },
	legend: {
        orient: 'vetical',
        x: 'right',
        data:['思明','湖里','海沧','集美','角美','同安','翔安'],
        textStyle:{
        	fontSize:"18",
        	color:"#ffffff",
        },
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius: '55%',
            roseType:'angle',
            data:[
                {value:smavg, name:'思明'},
                {value:hlavg, name:'湖里'},
                {value:hcavg, name:'海沧'},
                {value:jmavg, name:'集美'},
                {value:jiaomeiavg, name:'角美'},
                {value:taavg, name:'同安'},
                {value:xaavg, name:'翔安'},
            ]
        }
    ]
});
var option = {
        title: {
            text: '对比柱状图',
            textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
        },
        tooltip: {
        	 textStyle:{
 	        	fontSize:"18",
 	        	color:"#ffffff",
 	        },
        },
        legend: {
            data:['面积单价'],
            textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
        },
        xAxis: {
            data: ["思明","湖里","海沧","集美","角美","同安","翔安"]
        },
        yAxis: {},
        series: [{
            name: '面积单价',
            type: 'bar',
            data: [smavg, hlavg, hcavg, jmavg, jiaomeiavg,taavg, xaavg],
            textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
        }]
    };
myChart_line.setOption(option);
</script>
</body>
</html>