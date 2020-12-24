package com.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javabeans.Teacher;


@WebServlet("/ManagerTeacherPasswordServlet")
public class ManagerTeacherPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String tno = request.getParameter("tno").trim();
		String new_password = request.getParameter("new_password").trim();
		UserDao dao = new UserDao();
		String message = null;
		try {
			boolean success = dao.teacher_password(new_password,tno);
			if(success)
			{
				message = "<li>ÃÜÂëĞŞ¸Ä³É¹¦</li>";
			}
			else message = "<li>ÃÜÂëĞŞ¸ÄÊ§°Ü</li>";
			
		} catch (Exception e) {
			e.printStackTrace();
			message = "<li>ÃÜÂëĞŞ¸Ä´íÎó</li>";
		}
		request.setAttribute("result", message);
		RequestDispatcher rd = request
				.getRequestDispatcher("/manager_teacher_password.jsp");
		rd.forward(request, response);
	}

}
