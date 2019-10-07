package com.OMO.JavaBeans;

import java.sql.*;

public class CreateAccount {
	
	public boolean CreateUser(Users user) {
		
		boolean ret = false;
		String sql = "insert into users values(null,?,?,?,?,?)";
		PreparedStatement ps;
		Connection con;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/omodb?useUnicode=true&characterEncoding=utf8&useSSL=false";
			con = DriverManager.getConnection(url,"root","124536");
			System.out.println("connection successed!");
			
			ps=con.prepareStatement(sql);
			
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getAddress());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getEmail());
			
			int id = ps.executeUpdate();
		
			if(id==1) {
				ret=true;
			}
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
			
		}catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return ret;
	}

}
