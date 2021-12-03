<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/vector.js"></script>

</head>
<body>

<div id="container">

	
	<div id="output">
	
		<div class="containerT">

			<h1>推荐查询</h1>
			<p>		<select class="select"id="menu" style="margin:0 auto;width:10rem;height:2rem;background-color:#ffffff">
  <option value ="1" selected="selected">地区-价位段</option>
  <option value ="2">地区</option>
  <option value="3">地区-户型</option>
</select></p>
			<form style="display:none"class="form" id="entry_form" action="${pageContext.request.contextPath }/sortPriceList.do">
				<input type="text" placeholder="地区" id="entry_pri" name="region" value="" required="required" >
				<input type="text" placeholder="价位段" id="entry_house" name="price" value="" required="required">
				
				<div id="prompt" class="prompt"></div>
				<button type="submit" id="entry_btn">查询</button>
			</form>
			<form style="display:none"class='form'id="entry_form2" action="${pageContext.request.contextPath }/sortAreaAPList.do"method="post">
			<input type="text" name="region" placeholder="地区"/>
				<button type="submit" value="查询">查询</button>
			</form>
			<form style="display:none" class="form" id="entry_form3" action="${pageContext.request.contextPath }/sortHouseAPList.do"method="post">
			<input type="text" name="region" placeholder="地区"/>
			<input type="text" name="houseLayout" placeholder="户型"/>
			<button type="submit" value="查询">查询</button>
			</form>
		</div>
	</div>
</div>

<script>
	
		var formselect = $("#menu");
		var form1 = $("#entry_form");
		var form2 = $("#entry_form2");
		var form3 = $("#entry_form3");
		formselect.click(function(){
			if(formselect.val() ==1){
				form1.css("display","inline-block");
				form2.css("display","none");
				form3.css("display","none");
			}
			else if(formselect.val() ==2){
				form2.css("display","inline-block");
				form1.css("display","none");
				form3.css("display","none");
			}
			else if(formselect.val() ==3){
				form3.css("display","inline-block");
				form2.css("display","none");
				form1.css("display","none");
			}
		});
	
</script>
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
<div style="text-align:center;">
</div>
</body>
</html>