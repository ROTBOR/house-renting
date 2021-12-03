<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>户型平均价格</title>
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
            <li><i class="nav_1"></i><a href="${pageContext.request.contextPath}/queryPriceList.do">价格</a> </li>
            <li><i class="nav_2"></i><a href="${pageContext.request.contextPath}/queryAreaAPList.do">地区平均价格</a> </li>
            <li  class="nav_active"><i class="nav_3"></i><a href="${pageContext.request.contextPath}/queryHouseAPList.do">户型平均价格</a> </li>
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
			<div id="echartsPrice" style="background:while;height:30rem;width:100%;margin:0 auto"></div>
		<div id="echartsPrice_line" style="height:30rem;width:100%;display:block;margin:0 auto"></div>
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


<script type="text/javascript">
var smavg = ${smavg};
var hlavg = ${hlavg};
var hcavg = ${hcavg};
var jmavg = ${jmavg};
var jiaomeiavg = ${jiaomeiavg};
var taavg = ${taavg};
var xaavg = ${xaavg};
var myChart = echarts.init(document.getElementById("echartsPrice"));
myChart.setOption({
	title:{
		text:"厦门各区户型平均价格",
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
            radius: ['55%','70%'],
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



var myChart_line = echarts.init(document.getElementById("echartsPrice_line"));
//思明
var smnum1 = ${smlist[0].averagePrice};
var smnum2 = ${smlist[1].averagePrice};
var smnum3 = ${smlist[2].averagePrice};
var smnum4 = ${smlist[3].averagePrice};
var smnum5 = ${smlist[4].averagePrice};
var smnum6 = ${smlist[5].averagePrice};
var smnum7 = ${smlist[6].averagePrice};
var smnum8 = ${smlist[7].averagePrice};
var smnum9 = ${smlist[8].averagePrice};
//湖里
var hlnum1 = ${hllist[0].averagePrice};
var hlnum2 = ${hllist[1].averagePrice};
var hlnum3 = ${hllist[2].averagePrice};
var hlnum4 = ${hllist[3].averagePrice};
var hlnum5 = ${hllist[4].averagePrice};
var hlnum6 = ${hllist[5].averagePrice};
var hlnum7 = ${hllist[6].averagePrice};
var hlnum8 = ${hllist[7].averagePrice};
var hlnum9 = ${hllist[8].averagePrice};
//海沧
var hcnum1 = ${hclist[0].averagePrice};
var hcnum2 = ${hclist[1].averagePrice};
var hcnum3 = ${hclist[2].averagePrice};
var hcnum4 = ${hclist[3].averagePrice};
var hcnum5 = ${hclist[4].averagePrice};
var hcnum6 = ${hclist[5].averagePrice};
//集美
var jmnum1 = ${jmlist[0].averagePrice};
var jmnum2 = ${jmlist[1].averagePrice};
var jmnum3 = ${jmlist[2].averagePrice};
var jmnum4 = ${jmlist[3].averagePrice};
var jmnum5 = ${jmlist[4].averagePrice};
var jmnum6 = ${jmlist[5].averagePrice};
var jmnum7 = ${jmlist[6].averagePrice};
//角美
var jiaomei1 = ${jiaomeilist[0].averagePrice};
var jiaomei2 = ${jiaomeilist[1].averagePrice};
var jiaomei3 = ${jiaomeilist[2].averagePrice};
var jiaomei4 = ${jiaomeilist[3].averagePrice};
//同安
var tanum1 = ${talist[0].averagePrice};
var tanum2 = ${talist[1].averagePrice};
var tanum3 = ${talist[2].averagePrice};
var tanum4 = ${talist[3].averagePrice};
var tanum5 = ${talist[4].averagePrice};
var tanum6 = ${talist[5].averagePrice};
var tanum7 = ${talist[6].averagePrice};
var tanum8 = ${talist[6].averagePrice};
//翔安
var xanum1 = ${xalist[0].averagePrice};
var xanum2 = ${xalist[1].averagePrice};
var xanum3 = ${xalist[2].averagePrice};
var xanum4 = ${xalist[3].averagePrice};
var xanum5 = ${xalist[4].averagePrice};

option = {
	title:{
		text:"厦门地区户型均价统计图",	
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
      data:['1室','2室','3室','4室','5室','6室','7室','8室','9室']
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
          name:'1室',
          type:'bar',
          data:[smnum1, hlnum1, hcnum1, jmnum1,  jiaomei1, tanum1, xanum1]
      },
      {
          name:'2室',
          type:'bar',
         
          data:[smnum2, hlnum2, hcnum2, jmnum2, jiaomei2, tanum2, xanum2]
      },
      {
          name:'3室',
          type:'bar',
         
          data:[smnum3, hlnum3, hcnum3, jmnum3, jiaomei3, tanum3, xanum3]
      },
      {
          name:'4室',
          type:'bar',
       
          data:[smnum4, hlnum4, hcnum4, jmnum4, jiaomei4, tanum4, xanum4]
      },
      {
          name:'5室',
          type:'bar',
          data:[smnum5, hlnum5, hcnum5, jmnum5, 0, tanum5, xanum5],
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
          name:'6室',
          type:'bar',
          barWidth : 5,
      
          data:[smnum6, hlnum6, 0, jmnum6, 0, tanum6, 0]
      },
      {
          name:'7室',
          type:'bar',
          data:[smnum7, hlnum7, 0, jmnum7, 0, 0, 0]
      },
      {
          name:'8室',
          type:'bar',
          data:[smnum8, hlnum8, 0, 0, 0, tanum7, 0]
      },
     {
          name:'9室',
          type:'bar',
          data:[smnum9, hlnum9, 0, 0, 0, tanum8, 0]
      }
  ]
};
myChart_line.setOption(option,true);
</script>
</body>
</html>