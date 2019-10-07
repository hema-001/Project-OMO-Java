package com.OMO.JavaBeans;

import java.sql.*;

public class Login {
	
	public boolean IsAccount(Users user) {
		
		boolean ret = false;
		String sql = "select * from users where name = ? and password = ?";
		PreparedStatement ps;
		Connection con;
		ResultSet rs;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/omodb?useUnicode=true&characterEncoding=utf8&useSSL=false";
			con = DriverManager.getConnection(url,"root","124536");
			System.out.println("isAccount");
			ps=con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			
			
			if(rs.next()) {
				ret=true;
			}
			
			rs.close();
			ps.close();
			con.close();
			
		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}catch(ClassNotFoundException e) {
			
			e.printStackTrace();
			
		}
		
		return ret;
	}
	
	public boolean isAdmin(String role) {
		boolean ret = false;
		String sql = "select * from users where role = ?";
		PreparedStatement ps;
		Connection con;
		ResultSet rs;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/omodb?useUnicode=true&characterEncoding=utf8&useSSL=false";
			con = DriverManager.getConnection(url,"root","124536");
			System.out.println("isAdmin");
			ps=con.prepareStatement(sql);
			ps.setString(1, role);
			rs = ps.executeQuery();
			
			
			if(rs.next()) {
				ret=true;
			}
			
			rs.close();
			ps.close();
			con.close();
			
		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}catch(ClassNotFoundException e) {
			
			e.printStackTrace();
			
		}
		
		return ret;
	}

}
