<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>

<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	    Object username=session.getAttribute("username");
		String password=request.getParameter("password");
		int amount=Integer.parseInt(request.getParameter("amount"));
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","dileninban");
			PreparedStatement ps=con.prepareStatement("Select * from acc where username=? and password=?");
			//ps.setString(1,accountno);
			ps.setObject(1, username);
			ps.setString(2, password);
			ResultSet re=ps.executeQuery();
			int amnt=0;
			if(re.next()){
				amnt=re.getInt(6)+amount;
			if(amnt>0) {
			PreparedStatement st=con.prepareStatement("update acc set amount=? where username='"+username+"'");
			st.setInt(1,amnt);
			int rs=st.executeUpdate();
			
			if(rs>0) {
				request.setAttribute("dep","success");
				dispatcher=request.getRequestDispatcher("deposit.jsp");
			}else {
				
			}
			
			}else {
				response.sendRedirect("err.jsp");
			}
			}else {
				request.setAttribute("dep", "failed");
				dispatcher=request.getRequestDispatcher("deposit.jsp");
			}
			dispatcher.forward(request, response);
			PreparedStatement st=con.prepareStatement("insert into histroy(username,amount,transcation) values (?,?,?);");
			st.setObject(1,username);
			//st.setString(2, accountno);
			st.setInt(2, amount);
			String tan="Deposit";
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

%>
</body>
</html>