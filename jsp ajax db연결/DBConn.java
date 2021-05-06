package kr.jobtc.json;

import java.sql.Connection;
import java.sql.DriverManager;

/*오라클을 연결하고 최종적으로 Connetion 객체를 반환하는 역활*/
// 데이터베이스 뷰 기능 다 따로 작업
//conn을 반환 받으면 다른곳에서도 데이터베이스를 연동하여 쓸수있다 공통모듈느낌
public class DBConn {
	String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
    String user = "hr";
    String pwd = "1111";
    Connection conn = null;

    public Connection getConn() {
    try {
    Class.forName(driver);
    conn = DriverManager.getConnection(url, user, pwd);
    } catch(Exception ex) {
    	ex.printStackTrace();
    }
      return conn;
    }
}
