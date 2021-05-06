package kr.jobtc.json;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Depart {
PreparedStatement ps;
ResultSet rs;
Connection conn;



public String getDepart(String dno) {
	String json = "";
    
	try {
    Connection conn = new DBConn().getConn();
    String sql = "select * from departments where department_id=?";
    ps = conn.prepareStatement(sql);
    ps.setString(1,dno);
    rs = ps.executeQuery();
    //rs에 데이터가 존재하냐
    if(rs.next()) {
      String str = String.format("{'dname':'%s','mid':'%d','lid':'%d'}",
    		  rs.getString("department_name"),
    		  rs.getInt("manager_id"),
    		  rs.getInt("location_id"));
        json  = str.replaceAll("'","\"");
    }
		
 	}catch(Exception ex) {
		ex.printStackTrace();
	}
	
	return json;
}

}
