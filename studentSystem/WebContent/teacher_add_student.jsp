<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
            <span class="float-right">
                <a class="button button-little bg-yellow" href="login.jsp">注销登录</a>
            </span>
           <ul class="nav nav-inline admin-nav">
           			<li ><a href="student_infomation.jsp" > 个人管理</a>
						<ul>
							<li><a href="teacher_infomation.jsp">教师信息</a></li>
							<li ><a href="teacher_password.jsp">修改密码</a></li>
						</ul>
					</li>
					<li><a href="teacher_rank_score.jsp" >教师查询</a>
						<ul>
							<li><a href="teacher_rank_score.jsp">学生成绩查询</a></li>
							<li><a href="teacher_search_course.jsp">教师任课查询</a></li>
							
						</ul>
					</li>
					<li class="active"><a href="input_student_score.jsp" >教师管理</a>
						<ul>
							<li><a href="input_student_score.jsp">学生成绩输入</a></li>
							<li><a href="input_student_score.jsp">学生成绩输入</a></li>
							<li class="active"><a href="teacher_add_student.jsp">添加学生</a></li>
						</ul>
					</li>
            </ul> 	 	
        </div>
        <div class="admin">

		<div class="tab">
			<div class="tab-head">
				<strong>添加学生信息</strong>
			</div>
			<div class="tab-body">
				<br />
				<div class="tab-panel active" id="tab-set">
					<form action="AddStudentServlet" method="post" class="form-x" >
						<div class="form-group">
							<div class="label">
								<label for="sno">学号:</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="sno"
									name="sno" size="30" style="width: 150px"
									placeholder="学号" data-validate="required:请填写学号" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="spassword">密码：</label>
							</div>
							<div class="field">
								<input type="password" class="input" id="spassword"
									name="spassword" size="30" style="width: 150px"
									placeholder="密码" data-validate="required:请填写密码" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="sname">姓名：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="sname"
									name="sname" size="30" style="width: 150px"
									placeholder="姓名" data-validate="required:请填写姓名" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="ssex">性别：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="ssex"
									name="ssex" size="30" style="width: 150px"
									placeholder="男或女" data-validate="required:请填写性别" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="sage">年龄：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="sage"
									name="sage" size="30" style="width: 150px"
									placeholder="年龄" data-validate="required:请填写年龄" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="sbirthplace">出生地：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="sorigin"
									name="sorigin" size="30" style="width: 150px"
									placeholder="出生地" data-validate="required:出生地" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="scredit">已修学分：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="scredit"
									name="scredit" size="30" style="width: 150px"
									placeholder="已修学分" data-validate="required:请填写已修学分" />
							</div>
						</div>
						<div class="form-group">
							<div class="label">
								<label for="cno">班级编号：</label>
							</div>
							<div class="field">
								<input type="text" class="input" id="cno"
									name="cno" size="30" style="width: 150px"
									placeholder="班级编号" data-validate="required:请填写班级编号" />
							</div>
						</div>
						<input type="hidden" id="hideParameter" name="hideParameter" value = "teacher">
						<div class="form-button">
							<button class="button bg-main" type="submit">提交</button>
						</div>
						<font color = red>${result}</font>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
