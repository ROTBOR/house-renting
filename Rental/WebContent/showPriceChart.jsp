<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>各地区各价位段房源</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
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
            <li class="nav_active"><i class="nav_1"></i><a href="${pageContext.request.contextPath}/queryPriceList.do">价格</a> </li>
            <li  ><i class="nav_2"></i><a href="${pageContext.request.contextPath}/queryAreaAPList.do">地区平均价格</a> </li>
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
			<div id="echartsPrice" style="height:40rem;width:50rem;margin:0 auto"></div>

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




<script type="text/javascript" >
var myChart = echarts.init(document.getElementById("echartsPrice"));
//思明
var smnum1 = ${smlist[0].number};
var smnum2 = ${smlist[1].number};
var smnum3 = ${smlist[2].number};
var smnum4 = ${smlist[3].number};
var smnum5 = ${smlist[4].number};
var smnum6 = ${smlist[5].number};
//湖里
var hlnum1 = ${hllist[0].number};
var hlnum2 = ${hllist[1].number};
var hlnum3 = ${hllist[2].number};
var hlnum4 = ${hllist[3].number};
var hlnum5 = ${hllist[4].number};
var hlnum6 = ${hllist[5].number};
var hlnum7 = ${hllist[6].number};
//海沧
var hcnum1 = ${hclist[0].number};
var hcnum2 = ${hclist[1].number};
var hcnum3 = ${hclist[2].number};
var hcnum4 = ${hclist[3].number};
var hcnum5 = ${hclist[4].number};
var hcnum6 = ${hclist[5].number};
var hcnum7 = ${hclist[6].number};
//集美
var jmnum1 = ${jmlist[0].number};
var jmnum2 = ${jmlist[1].number};
var jmnum3 = ${jmlist[2].number};
var jmnum4 = ${jmlist[3].number};
var jmnum5 = ${jmlist[4].number};
var jmnum6 = ${jmlist[5].number};
//角美
var jiaomei1 = ${jiaomeilist[0].number};
var jiaomei2 = ${jiaomeilist[1].number};
var jiaomei3 = ${jiaomeilist[2].number};
var jiaomei4 = ${jiaomeilist[3].number};
var jiaomei5 = ${jiaomeilist[4].number};
//同安
var tanum1 = ${talist[0].number};
var tanum2 = ${talist[1].number};
var tanum3 = ${talist[2].number};
var tanum4 = ${talist[3].number};
var tanum5 = ${talist[4].number};
var tanum6 = ${talist[5].number};
var tanum7 = ${talist[6].number};
//翔安
var xanum1 = ${xalist[0].number};
var xanum2 = ${xalist[1].number};
var xanum3 = ${xalist[2].number};
var xanum4 = ${xalist[3].number};
var xanum5 = ${xalist[4].number};
var xanum6 = ${xalist[5].number};
option = {
	title:{
		text:"厦门地区价位段数量统计图",	
		 textStyle:{
	        	fontSize:"18",
	        	color:"#ffffff",
	        },
	},
	
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        },
        textStyle:{
        	fontSize:"18",
        	color:"#ffffff",
        },
    },
    legend: {
    	x: 'right',
    	orient: 'vertical',
        data:['0-500','500-1000','1000-2000','2000-3000','3000-5000','5000-8000','8000+'],
        textStyle:{
        	fontSize:"18",
        	color:"#ffffff",
        },
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data : ['思明','湖里','海沧','集美','角美','同安','翔安']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'0-500',
            type:'bar',
            data:[0, hlnum1, hcnum1, 0, 0, tanum1, 0]
        },
        {
            name:'500-1000',
            type:'bar',
           
            data:[smnum1, hlnum2, hcnum2, jmnum1, jiaomei1, tanum2, xanum1]
        },
        {
            name:'1000-2000',
            type:'bar',
           
            data:[smnum2, hlnum3, hcnum3, jmnum2, jiaomei2, tanum3, xanum2]
        },
        {
            name:'2000-3000',
            type:'bar',
         
            data:[smnum3, hlnum4, hcnum4, jmnum3, jiaomei3, tanum4, xanum3]
        },
        {
            name:'3000-5000',
            type:'bar',
            data:[smnum4, hlnum5, hcnum5, jmnum4, jiaomei4, tanum5, xanum4],
            markLine : {
                lineStyle: {
                    normal: {
                        type: 'dashed'
                    }
                },
                data : [
                    [{type : 'min'}, {type : 'max'}]
                ]
            }
        },
        {
            name:'5000-8000',
            type:'bar',
            barWidth : 5,
        
            data:[smnum5, hlnum6, hcnum6, jmnum5, jiaomei5, tanum6, xanum5]
        },
        {
            name:'8000+',
            type:'bar',
            data:[smnum6, hlnum7, hcnum7, jmnum6, 0, tanum7, xanum6]
        }
    ]
};
myChart.setOption(option,true);
</script>
</body>
</html>