<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="manager" class="com.javabeans.Manager" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>学生管理系统</title>
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
           		  <li><a href="manager_add_student.jsp" > 信息添加</a>
            		<ul><li class="active"><a href="manager_add_student.jsp">添加学生</a></li>
            		<li><a href="manager_add_teacher.jsp">添加教师</a></li>
            		<li><a href="manager_add_class.jsp">添加班级</a></li>
            		<li><a href="manager_add_course.jsp">添加课程</a></li></ul>
            	</li>
            	<li><a href="manager_delete_student.jsp">信息删除</a>
            	    <ul><li class="active"><a href="manager_delete_student.jsp">删除学生</a></li>
            	    <li><a href="manager_delete_teacher.jsp">删除教师</a></li>
            	    <li><a href="manager_delete_class.jsp">删除班级</a></li>
            	    <li><a href="manager_delete_course.jsp">删除课程</a></li></ul>
            	</li>
            	<li><a href="search_student_area.jsp" >查询学生信息</a></li>
            	<li><a href="search_techer.jsp" >查询老师信息</a></li>
            	<li  ><a href="search_class.jsp" >查询班级信息</a></li>
            	<li ><a href="search_course.jsp" class="icon-search">课程查询</a></li>
            	<li class="active"><a href="manager_password.jsp" >修改密码</a>
            		<ul>
	            		<li><a href="manager_password.jsp">管理员密码修改</a></li>
	            	    <li><a href="manager_teacher_password.jsp">教师密码修改</a></li>
	            	    <li><a href="manager_student_password.jsp">学生密码修改</a></li></ul>
            		</ul>
            	</li>
            </ul> 
			</div>
		</div>
	</div>
	<div class="admin">

		<div class="tab">
			<div class="tab-head">
				<strong>密码修改</strong>
			</div>
			<div class="tab-body">
				<br />
				<div class="tab-panel active" id="tab-set">
					<form action="ManagerPasswordServlet" method="post" class="form-x" >
						<div class="form-group">
							<div class="label">
								<label for="old_password">旧密码：</label>
							</div>
							<div class="field">
								<input type="password" class="input" id="old_password"
									name="old_password" size="30" style="width: 100px"
									placeholder="原先的密码" data-validate="required:请填写你原先的密码" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="new_password">新密码：</label>
							</div>
							<div class="field">
								<input type="password" class="input" id="new_password"
									name="new_password" size="30" style="width: 100px"
									placeholder="新密码" data-validate="required:请填写你新的密码" />
							</div>
						</div>
						<div class="form-button">
							<button class="button bg-main" type="submit">提交</button>
						</div>
						<font color = red>${result}</font>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>