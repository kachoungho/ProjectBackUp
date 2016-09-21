package dbconn.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {
	public static Connection getConnection(String dns){
		Connection conn = null;
		try{
			if(dns.equals("mysql")){
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/sampleDB", "choungho", "1234");
			} else if (dns.equals("oracle")){
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe", "choungho", "1234");
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			return conn;
		}
	}
}
