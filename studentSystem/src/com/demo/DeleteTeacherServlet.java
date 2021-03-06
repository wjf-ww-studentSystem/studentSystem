package com.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteTeacherServlet")
public class DeleteTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteTeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message=null;
		try {
			String tno=request.getParameter("tno");
			UserDao ud=new UserDao();
			ud.deleteTeacher(tno);
			boolean success=ud.deleteTeacher(tno);
		   if(success){
			message="<li>�ɹ�ɾ��һ����¼!</li>";
			}else{
			message="<li>ɾ��ʧ��!</li>";
			}
		}catch(Exception e) {
			message="<li>ɾ��ʧ�ܣ�</li>";
		}
		request.setAttribute("result", message);
		RequestDispatcher rd=getServletContext().getRequestDispatcher("/manager_delete_teacher.jsp");
		rd.forward(request, response);
	}
}
