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
@WebServlet("/transfer")
public class transfer extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		login obj=new login();
		//String mailid=req.getParameter("mailid");
		//String phonenumber=req.getParameter("phonenumber");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String accountno=req.getParameter("accountno");
		String taccountno=req.getParameter("taccountno");
		String regards=req.getParameter("regards");
		String type=req.getParameter("type");
		int amount=Integer.parseInt(req.getParameter("amount"));
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","dileninban");
			PreparedStatement ps=con.prepareStatement("Select * from acc where  password=? and username=?");
			//ps.setString(1,accountno);
			ps.setString(2, username);
			ps.setString(1, password);
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
			PreparedStatement p1=con.prepareStatement("Select * from acc where accountno=?");
			p1.setString(1,taccountno);
			ResultSet re1=p1.executeQuery();
			int amnt1=0;
			//int a=re1.getInt("amount");
			if(re1.next()){
				amnt1=amount+re1.getInt(6);
			if(amount>0) {
			PreparedStatement st1=con.prepareStatement("update acc set amount=? where accountno='"+taccountno+"'");
			st1.setInt(1,amnt1);
			int rs1=st1.executeUpdate();
		}
			}
			PreparedStatement st=con.prepareStatement("insert into histroy(username,amount,transcation,received_accountno,type,message) values (?,?,?,?,?,?);");
			st.setString(1,username);
			//st.setString(2, taccountno);
			st.setInt(2, amount);
			String tan="transfer";
			st.setString(3, tan);
			st.setString(4, taccountno);
			st.setString(5, type);
			st.setString(6, regards);
			int rs=st.executeUpdate();
		}catch (Exception e) {
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