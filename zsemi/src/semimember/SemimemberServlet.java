package semimember;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/member.do")
public class SemimemberServlet  extends HttpServlet{
String flag;
String result;
String mid;

SemimemberVo vo = new SemimemberVo();
SemimemberDao dao = new SemimemberDao();
RequestDispatcher rd;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "";
		HttpSession session =req.getSession(); 
		req.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html;charset=utf-8");
		  
		  if(req.getParameter("flag") != null) {
			   flag = req.getParameter("flag");
		   }
			  
		 vo.setMid(req.getParameter("mid"));
		 vo.setIrum(req.getParameter("irum"));
		 vo.setPassword(req.getParameter("password"));
		 vo.setPhone(req.getParameter("phone"));
		 vo.setPost(req.getParameter("post"));
		 vo.setAddress(req.getParameter("address"));
		 vo.setAddress2(req.getParameter("address2"));
		 vo.setAccount(req.getParameter("account"));
		 vo.setHost(req.getParameter("host"));
		 vo.setPosi(req.getParameter("posi"));

		  
		  
		  switch(flag) {
		  case "register":
			 result = dao.insert(vo);
	
			  break;
		  case "modify":
			  result = dao.Update(vo);
	
			  break;
		  case "delete":
              mid = vo.getMid();
			 result = dao.delete(mid);

			  break;
		  case "search":
			  url += "./page/sign_modify.jsp";
              mid = vo.getMid();
			  vo = dao.search(mid);
			  req.setAttribute("vo",vo );
		  case "login":
			  url +="./page/home.jsp";
			  String mid = dao.logSearch(vo);
			  if(mid != null) {
				  session.setAttribute("mid", mid);
			  }else if (mid == null) {
				  req.setAttribute("logcheck", "false");
			  }
		  }
		  
		   rd = req.getRequestDispatcher(url);
		   rd.include(req, resp);
		  
	}

	
	
	
}
