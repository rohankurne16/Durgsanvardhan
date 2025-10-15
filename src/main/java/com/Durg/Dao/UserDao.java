package com.Durg.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Durg.bin.User;

public class UserDao {

	public boolean insert(User u) throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/durg","root","root");
		
		PreparedStatement ps=con.prepareStatement("insert into user(name,address,number,age,email) values (?,?,?,?,?)");
		
		ps.setString(1, u.getName());
		ps.setInt(4, u.getAge());
		ps.setString(3, u.getNumber());
		ps.setString(5, u.getEmail());
		ps.setString(2, u.getAddress());
		
		
		int rs = ps.executeUpdate();
		
		if(rs>0) {
			
			return true;
			
		}
		else {
			
			return false;
			
		}
	}
}
