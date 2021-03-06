<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,com.javabeans.Cc"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>教师管理系统</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/respond.js"></script>
<script src="js/admin.js"></script>
<link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
<link href="/favicon.ico" rel="bookmark icon" />
</head>

<body>
	<div class="lefter">
		
	</div>
	<div class="righter nav-navicon" id="admin-nav">
		<div class="mainer">
			<div class="admin-navbar">
				<span class="float-right"> <a
					class="button button-little bg-yellow" href="login.jsp">注销登录</a>
				</span>
				<ul class="nav nav-inline admin-nav">
					<li><a href="student_infomation.jsp" >
							个人管理</a>
						<ul>
							<li><a href="teacher_infomation.jsp">教师信息</a></li>
							<li><a href="teacher_password.jsp">修改密码</a></li>
						</ul></li>
					<li class="active"><a href="teacher_rank_score.jsp"
						>教师查询</a>
						<ul>
							<li><a href="teacher_rank_score.jsp">学生成绩查询</a></li>
							<li><a href="teacher_search_course.jsp">教师任课查询</a></li>
							<li class="active"><a href="teacher_class_course.jsp">课程开设查询</a></li>
						</ul></li>
					<li><a href="input_student_score.jsp" >教师管理</a>
						<ul>
							<li><a href="input_student_score.jsp">学生成绩输入</a></li>
						</ul></li>
						</ul>
			</div>


			<div class="admin">
				<div class="admin-bread">
					<form action="ClassCourseServlet" method="post">
						<div class="panel-foot bg-back border-back" align="left">
							<button class="button bg-main" type="submit">查询</button>
						</div>
					</form>

					<div class="panel">
						<div class="panel-head">
							<strong>查询结果</strong>
						</div>
						<table class="table">
							<tr>
								<th>班级编号</th>
								<th>班级名称</th>
								<th>课程编号</th>
								<th>课程名称</th>

							</tr>
							<%
								ArrayList<Cc> ccList = (ArrayList<Cc>) session.getAttribute("ccList");
								if (ccList != null) {
									for (Cc cc : ccList) {
							%>
							<tr>
								<td align="left"><%=cc.getClassno()%></td>
								<td align="left"><%=cc.getClassname()%></td>
								<td align="left"><%=cc.getCno()%></td>
								<td align="left"><%=cc.getCname()%></td>
							</tr>
							<%
								}
								}
							%>
						</table>
					</div>
				</div>
			</div>
</body>
</html>