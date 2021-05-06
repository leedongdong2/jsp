<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 오라클 데이터 베이스 연결 방법
   1) web-inf/lib/오라클DB의 드라이버 파일 복사 
   C:\app\2-7\product\18.0.0\dbhomeXE\jdbc\lib
   기본값으로 깔았을떄 lib파일 찾기

   2) Class.forName()을 사용하여 드라이버를 메모리에 로딩
   3) DriverManage클래스를 사용하여 오라클 db에 접속
   4) SQL문장을 작성
   5) Statement 또는 PreparedStatement를 사용하여 실행할 쿼리의 객체를 생성   
   6) SQL문장 실행 (insert,updatae,delete=>excuteUpdate(),
                  select=> excuteQuery로 실행)
    
   7) selcet 결과는 ResultSet으로 받고, insert, update, delete는 적용된 행수가 반환됨)
*/

//2번             버전마다 드라이버 버젼을 확인해야함
String driver = "oracle.jdbc.driver.OracleDriver";
            //오라클 접속경로     호스트주소 내부포트1521 버젼
            //                         외부포트8080
String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
String user = "hr";
String pwd = "1111";
Connection conn = null;


//json_form.jsp에서 수신된 파라미터 값을 얻어온다
                                 //findStr input name으로 보내진 벨류
String findStr = request.getParameter("findStr");

String wheresql = "";
String token="";
StringTokenizer st = new StringTokenizer(findStr);

if(st.countTokens()>0){
//무조건 토큰이 하나 이상 일떄
     //바로앞 토큰을 하나가져온다
token = st.nextToken();
// 토큰이 하나일떄는 이것을 실행
wheresql=String.format("where first_name like '%s' or phone_number like '%s'",
         //스트링 포멧으로 미리 sql문을 완벽히 제작 ? 와 setString을 안써도 된다
	"%"+token+"%","%"+token+"%");
          //토큰값이더있다면
while(st.hasMoreElements()){
	     //다음 토큰값을 가져오고
	token = st.nextToken();
	   //sql문을 이어 붙여준다
	wheresql+=String.format(" or first_name like '%s' or phone_number like '%s'",
            "%"+token+"%","%"+token+"%");
}
}

try{ 
    Class.forName(driver);
    //url 과 유저명과 비밀번호로 db와 연결해준다
    conn = DriverManager.getConnection(url, user, pwd);//3
    String sql = "select first_name,email,phone_number,salary from employees "+ wheresql ;//4
    //sql문은 띄어쓰기 중요해서 이어쓸떈 띄워쓰기 해준다
    //sql구문을 똑바로 써야 오류가 안난다
    //?는 잠시 sql문을 비게 내비두겟다는뜻
    //sql +=" where first_name like ?"
    	// +  " or phone_number like ?";
    PreparedStatement ps = conn.prepareStatement(sql);//5
    // 리조트로 결과를 받아오기전에 
    // ?에 넣을 값을 넣어줄수 있다.
    //타입마다 set타입을 변경하면서 넣어준다
    //        ?의 위치,데이터형
    //ps.setString(1,"%"+findStr+"%");
    //ps.setString(2,"%"+findStr+"%");
    ResultSet rs = ps.executeQuery();//6
       //resultset에 다음데이터가 있으면 계속 누핑을 해라
       StringBuffer sb = new StringBuffer();
       while(rs.next()){
    	     //타입마다 바꿔서 겟해줌 //컬럼명
        //웹페이지의 결과물을 jsonform이 가져간다
                 //타입마다다름      //컬럼명 에 속한 데이터를 가져온다
       int i = rs.getInt("salary");
       String sal = String.format("%,d",i);
       String str = String.format(
    		   "<div><span class='fn'>%s</span>"
    		   +"<span class='em'>%s</span>"
    		   +"<span class='ph'>%s</span>"
    		   +"<span class='sa'>%s</span>"
    		   +"</div>",
    		   rs.getString("first_name"),
    		   rs.getString("email"),
    		   rs.getString("phone_number"),
    		   sal
    		   );
       sb.append(str);
    }
       out.print(sb.toString()); //출력결과가 ajax로 전송된다.
}catch(Exception ex){
	out.print(ex.toString());
}


%>