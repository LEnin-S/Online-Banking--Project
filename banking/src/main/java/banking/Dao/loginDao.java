package banking.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class loginDao {
	String url="jdbc:mysql://localhost:3306/banking";
	String uname="root";
	String pass="dileninban";
	String query="select * from acc where username=? and password=?";
	public boolean check(String username,String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1,username);
			st.setString(2, password);
			ResultSet res=st.executeQuery();
			if(res.next()) {
				return true;
			}
			
		}catch(Exception e) {
			
		}
		
		
		return false;
	}

}


