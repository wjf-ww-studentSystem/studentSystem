<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

</head>

<body>
	<button id="btn1">xianshi</button>
	<button id="btn2">xiaoshi</button>
            <ul id="ul1">
                <li>1</li>
                <li>1</li>
                <li>1</li>
            </ul>
     <h1 >hello</h1>
</body>

<script>
	$(document).ready(function() {
	    alert("Hello world");
	   
	});
	 $('#btn1').click(function() {
			if($('#ul1').css('display') =="none") {
					 $('#ul1').show();
				 }
		});
	    $('#btn2').click(function() {
			if($('#ul1').css('display') =="block") {
				 	$('#ul1').hide();
			}
		});
	
</script>
</html>