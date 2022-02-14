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
@WebServlet("/dep")
public class withdraw extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		//String mailid=req.getParameter("mailid");
		//String phonenumber=req.getParameter("phonenumber");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
	//	String accountno=req.getParameter("accountno");
		int amount=Integer.parseInt(req.getParameter("amount"));
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","dileninban");
			PreparedStatement ps=con.prepareStatement("Select * from acc where username=? and password=?");
			//ps.setString(1,accountno);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet re=ps.executeQuery();
			int amnt=0;
			if(re.next()){
				amnt=re.getInt(6)-amount;
			if(amnt>0) {
			PreparedStatement st=con.prepareStatement("update acc set amount=? where username='"+username+"'");
			st.setInt(1,amnt);
			int rs=st.executeUpdate();
			dispatcher=req.getRequestDispatcher("balfunc.jsp");
			if(rs>0) {
				req.setAttribute("status","success");
			}else {
				req.setAttribute("status", "failed");
			}
			dispatcher.forward(req, res);
			}else {
				res.sendRedirect("err.jsp");
			}
			}else {
				res.sendRedirect("wrong.jsp");
			}
			PreparedStatement st=con.prepareStatement("insert into histroy(username,amount,transcation) values (?,?,?);");
			st.setString(1,username);
			//st.setString(2, accountno);
			st.setInt(2, amount);
			String tan="withdraw";
			st.setString(3, tan);
			int rs=st.executeUpdate();
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
