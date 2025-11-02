package com.Durg.Dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import com.Durg.bin.User;


public class UserDao {

public Boolean insert(User u) throws ClassNotFoundException, SQLException {
		
		
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/durg","root","root");
		
		PreparedStatement ps=con.prepareStatement("insert into user(name,address,number,age,email) values (?,?,?,?,?)");
		
                ps.setString(1, u.getName());
                ps.setString(2, u.getAddress());
                ps.setString(3, u.getNumber());
                ps.setInt(4, u.getAge());
                ps.setString(5, u.getEmail());

                int rs = ps.executeUpdate();
                
               if(rs>0) {
            	   
            	   return true;
            	   
               }
               else {
            	   
            	   return false;
            	   
            }
        }
}

