package semimember;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybaFactory;

public class SemimemberDao {
	SqlSession sqlSession;

 public SemimemberDao(){
		try {
			   //커넥션을하는 부분 팩토리를 불러와 세션을 오픈한다
			sqlSession = MybaFactory.getFactory().openSession();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
}

 public String insert(SemimemberVo vo){
	 String result="ok";
	 try {
	 int r =  sqlSession.insert("semimember.memberInsert",vo);
	 if(r>0) {
	   sqlSession.commit();	 
	 }else {
		 throw new Exception();
	 }
	 }catch(Exception ex) {
		 result = ex.toString();
		 ex.printStackTrace();
		 sqlSession.rollback();
	 }

	 return result; 
 }
 
 
 public String delete(String mid) {
	  String result ="ok";
	  try {
		  int r = sqlSession.delete("semimember.memberDelete",mid);
		  if(r>0) {
			  sqlSession.commit();
		  }else {
				 throw new Exception();
			 }
	  }catch(Exception ex) {
		  result =ex.toString();
		  ex.printStackTrace();
		  sqlSession.rollback();
	  }

	  return result ;
 }
 
 
 public String Update(SemimemberVo vo) {
	 String result ="ok";
	  try {
		  int r = sqlSession.update("semimember.memberUpdate",vo);
		  if(r>0) {
			  sqlSession.commit();
		  }else {
				 throw new Exception();
			 }
	  }catch(Exception ex) {
		  result = ex.toString();
		  ex.printStackTrace();
		  sqlSession.rollback();
	  }

	 return result;
 }
 
 public SemimemberVo search(String mid) {
	 SemimemberVo vo = new SemimemberVo();
	 try {
		 vo = sqlSession.selectOne("semimember.memberSearch",mid);
	 }catch(Exception ex) {
		 ex.printStackTrace();
	 }
	 return vo;
 }
 
 public String logSearch(SemimemberVo vo) {
	 String result= null;
	 try {
		 
		 result = sqlSession.selectOne("semimember.logSearch",vo);
	    if(result == null) {
	    	result = null;
	    }
	 }catch(Exception ex) {
		 result = ex.toString();
		ex.printStackTrace(); 
	 }
	 return result;
	 
 }
 
 
 
 
 
 
}
