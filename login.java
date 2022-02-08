package banking_project.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import banking_project.Doa.loginDao;
@WebServlet("/login")
public class login extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		loginDao obj=new loginDao();
		if(obj.check(username, password)) {
			res.sendRedirect("welcome.jsp");
		}else {
			res.sendRedirect("createaccount.jsp");
		}
	}

}
