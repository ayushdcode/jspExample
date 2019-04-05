package ta.db.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.org.apache.regexp.internal.recompile;

import ta.model.com.User;

public class DBHelper {
  Connection conn;
  PreparedStatement pst;
  ResultSet rs;
  static final String URL="jdbc:mysql://localhost:3306/indorecity1";
  public Connection getMyConn() throws Exception
  {
	  Class.forName("com.mysql.jdbc.Driver");
	  return DriverManager.getConnection(URL,"root","ayuaksh");
  }
  //delete user
  public int delData(String email) throws Exception
  {
	  conn=getMyConn();
	  String query="DELETE FROM users WHERE email=?";
	  pst=conn.prepareStatement(query);
	  pst.setString(1, email);
	  return pst.executeUpdate();
  }
  
  
//add user
  public int addUser(String uname,String email,String password) throws Exception
  {
	  	conn=getMyConn();
	  	String query="INSERT INTO users(uname,email,password) VALUES(?,?,?)";
	  	pst=conn.prepareStatement(query);
	  	pst.setString(1, uname);
	  	pst.setString(2, email);
	  	pst.setString(3, password);
	  	return pst.executeUpdate();
  }

  //login
  public User getUser(String email,String password) throws Exception
  {
	  
	    User user=null;
	  	conn=getMyConn();
	  	String query="SELECT *FROM users WHERE email=? AND password=?";
	  	pst=conn.prepareStatement(query);
	  	pst.setString(1, email);
	  	pst.setString(2, password);
	  	rs=pst.executeQuery();
	  	if(rs.next())
	  		user=new User(rs.getString(2),rs.getString(1));
	  	return user; 
  }	
	
  //get all users
  public ResultSet getAllUsers()throws Exception
  {
  	conn=getMyConn();
  	pst=conn.prepareStatement("SELECT *FROM users");
  	return pst.executeQuery();
  }
//update user
  public int editData(String uname,String email) throws Exception
  {
	  	conn=getMyConn();
	  	String query="UPDATE users SET uname=? WHERE email=?";
	  	pst=conn.prepareStatement(query);
	  	pst.setString(1, uname);
	  	pst.setString(2, email);
	  	return pst.executeUpdate();
  }

}
