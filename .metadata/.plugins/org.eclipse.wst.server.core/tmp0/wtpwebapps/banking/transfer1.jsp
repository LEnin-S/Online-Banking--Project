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
String username=(String)session.getAttribute("username");
String password=request.getParameter("password");
String accountno=request.getParameter("accountno");
String taccountno=request.getParameter("taccountno");
String regards=request.getParameter("regards");
String type=request.getParameter("type");
int amount=Integer.parseInt(request.getParameter("amount"));
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
	dispatcher=request.getRequestDispatcher("balfunc.jsp");
	if(rs>0) {
		request.setAttribute("tranf","success");
		dispatcher=request.getRequestDispatcher("transfer.jsp");
	}else {
		//request.setAttribute("with", "failed");
	}
	
	}else {
		request.setAttribute("tranf", "failed");
		dispatcher=request.getRequestDispatcher("transfer.jsp");
	}
	}else {
		request.setAttribute("tranf", "fail");
		dispatcher=request.getRequestDispatcher("transfer.jsp");
	}
	dispatcher.forward(request, response);
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
%>
</body>
</html>