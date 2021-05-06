package kr.jobtc.json;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class MemberDao {
      Connection conn;
      //멤버의 객체가 생성되는 순간 내가 설정한 db가 연결된다
      //DBConn에 연결된 데이터 베이스를 작동하여 쓸수 있음
      public MemberDao() {
    	  this.conn = new DBConn().getConn();
      }
     
      public String suggest(String findStr){
    	  String list = "";
    	  
    	  try {
    		  String wheresql = "";
    		  String token="";
    		  StringTokenizer st = new StringTokenizer(findStr);
    		  
    		  if(st.countTokens()>0) {
    			  token = st.nextToken();
    		  wheresql=String.format(" where first_name like '%s' or phone_number like '%s' ",     
    				"%"+token+"%","%"+token+"%");
    			 
    			while(st.hasMoreElements()){
    				token = st.nextToken();
    				wheresql+=String.format(" or first_name like '%s' or phone_number like '%s' ",
    			            "%"+token+"%","%"+token+"%");
    			}
    		  }
    			 
    			    String sql = "select employee_id,first_name,phone_number from employees "+ wheresql ;//4
    		
    			    PreparedStatement ps = conn.prepareStatement(sql);//5
    		
    			    ResultSet rs = ps.executeQuery();//6
    		
    			       StringBuffer sb = new StringBuffer();
    			       
    			       if(rs.next()) {
    			    	   String str = String.format(
        			    		   "{'id':'%s','data':'%s/%s'}",
        			    		   rs.getString("employee_id"),
        			    		   rs.getString("first_name"),
        			    		   rs.getString("phone_number")
        			    		   );
        			       str = str.replaceAll("'","\"" );
        			       sb.append(str);
    			       }
    			       
 
    			       while(rs.next()){ 
    			       String str = String.format(
    			    		   ",{'id':'%s','data':'%s/%s'}",
    			    		   rs.getString("employee_id"),
    			    		   rs.getString("first_name"),
    			    		   rs.getString("phone_number")
    			    		   );
    			       str = str.replaceAll("'","\"" );
    			       sb.append(str);
    			       }
    			       list = sb.toString();
    	  }
    			      catch(Exception ex) {
    		  ex.printStackTrace();
    	  }
    	  return list;
      }

      
      
     public String detail(String eid) {
    	 String data = "";
    	 
    	 try {
    		 String sql = "select employee_id, first_name, email, phone_number, department_id, job_id, manager_id"
    				     + " from employees where employee_id = ?";
    		 PreparedStatement ps = conn.prepareStatement(sql);
    		 ps.setString(1, eid);
    		 
    		 ResultSet rs = ps.executeQuery();
    		 if(rs.next()) {
    			 data = String.format("{'eid':'%d','fn':'%s','em':'%s','ph':'%s','did':'%s','mid':'%s','jid':'%s'}",rs.getInt("employee_id"),
    					               rs.getString("first_name"),rs.getString("email"),rs.getString("phone_number"),rs.getString("department_id"),
    					               rs.getString("manager_id"),rs.getString("job_id"));
    		 data = data.replaceAll("'","\"");
    		 }
    	 
    	 
    	 }catch(Exception ex) {
    		 ex.printStackTrace();
    	 }
    	 return data;
     }


}

