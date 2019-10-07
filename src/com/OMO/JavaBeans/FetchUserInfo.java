package com.OMO.JavaBeans;

import java.sql.*;

public class FetchUserInfo {
	
	public Users FetchUser(Users user) {
		
		Connection conn ;
		PreparedStatement ps;
		ResultSet rs;
		String sql = "select * from users where name=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url ="jdbc:mysql://localhost:3306/omodb?useUnicode=true&characterEncoding=utf8";
			String username = "root";
			String pass="124536";
			conn = DriverManager.getConnection(url,username,pass);
			
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getName());
			rs=ps.executeQuery();
			
		
			while(rs.next()) {
				
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				user.setRole(rs.getString("role"));
				
			
			}
			return user;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

}
