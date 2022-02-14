package banking.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/sign-up")
public class create extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		String mailid=req.getParameter("mailid");
		String phonenumber=req.getParameter("phonenumber");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String accountno=req.getParameter("accountno");
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","dileninban");
			PreparedStatement st=con.prepareStatement("insert into acc(mailid,phonenumber,username,password,accountno) values (?,?,?,?,?);");
			st.setString(1, mailid);
			st.setString(2,phonenumber);
			st.setString(3, username);
			st.setString(4, password);
			st.setString(5, accountno);
			//ResultSet tr=st.executeQuery();
			int rs=st.executeUpdate();
		//	dispatcher=req.getRequestDispatcher("welcome.jsp");
			if(rs>0) {
				dispatcher=req.getRequestDispatcher("welcome.jsp");
				HttpSession session=req.getSession();
				session.setAttribute("username",username );
				session.setAttribute("password",password );
				req.setAttribute("status1","success");
			}else {
				dispatcher=req.getRequestDispatcher("create.jsp");
				req.setAttribute("status1", "failed");
			}
			
			
			dispatcher.forward(req, res);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
