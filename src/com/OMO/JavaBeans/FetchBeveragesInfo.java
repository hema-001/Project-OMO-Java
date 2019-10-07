package com.OMO.JavaBeans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FetchBeveragesInfo {
	
public Meals FetchBeverage(Meals meal) {
		
		Connection conn ;
		PreparedStatement ps;
		ResultSet rs;
		String sql = "select * from beverages where b_id=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url ="jdbc:mysql://localhost:3306/omodb?useUnicode=true&characterEncoding=utf8";
			String username = "root";
			String pass="124536";
			conn = DriverManager.getConnection(url,username,pass);
			
			ps=conn.prepareStatement(sql);
			ps.setInt(1, meal.getId());
			rs=ps.executeQuery();
			
		
			while(rs.next()) {
				
				meal.setId(rs.getInt("b_id"));
				meal.setName(rs.getString("name"));
				meal.setPrice(rs.getDouble("price"));
				meal.setDescription(rs.getString("description"));
				meal.setRating(rs.getInt("rating"));
				meal.setImage(rs.getBlob("image"));
				
				
			
			}
			return meal;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
		
		
	}

}
