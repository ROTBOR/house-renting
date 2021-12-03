/**
 * 
 */
alert("111");
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

    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    legend: {
        data:['0-500','500-1000','1000-2000','2000-3000','3000-5000','5000-8000','8000+']
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