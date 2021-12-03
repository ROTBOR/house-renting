<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
<script type="text/javascript"
	src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
	
	    <link href="styles/common.css" rel="stylesheet">
    <link href="styles/bootstrap.min.css" rel="stylesheet">
    <link href="styles/bootstrap-table.css" rel="stylesheet">
    <link href="styles/pagination.css" rel="stylesheet">
    <script src="scripts/Plugin/jquery-3.3.1.min.js"></script>
    <script src="scripts/Plugin/echarts.min.js"></script>
    <script src="scripts/Plugin/jquery.pagination.min.js"></script>
    <script src="scripts/common.js"></script>
    <script src="scripts/chronic.js"></script>
	
</head>
<body>
	<!--<table border="1" style="margin:0 auto">
		<tr>
			<td>地区</td>
			<td>地段</td>
			<td>价格</td>
		</tr>
		<c:forEach var="i" items="${pricelist}" begin="0">
			<tr>
				<td>${i.region}</td>
				<td>${i.adress}</td>
				<td>${i.areaPrice}</td>
			</tr>
		</c:forEach>
	</table>-->
<!--内容部分-->
<div class="con left" style="width: 98%;margin-left: 1%;margin-bottom: 25px;">

	<form action="Query.jsp"><button class="btn btn-primary btn-sm" style="margin-left:20px"><span class="glyphicon glyphicon-search"></span>返回</button>
	</form>
    <div class="div_any_child">
          <div class="table_p" style="height: 96%;margin-top: 20px;">
              <table>
                  <thead>		
		            <tr>
					<td>地区</td>
					<td>地段</td>
					<td>价格</td>
					</tr>
                  </thead>
                  <tbody>
                  
                  <c:forEach var="i" items="${pricelist}" begin="0">
					<tr>
						<td>${i.region}</td>
						<td>${i.adress}</td>
						<td>${i.areaPrice}</td>
					</tr>
				  </c:forEach>
                  
                                
                  </tbody>
              </table>
          </div>

        </div>


    </div>
	
</body>
</html>