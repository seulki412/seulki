package com.shinnaHotel.user;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.shinnaHotel.DAO.UsersDAO;

import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class UserLoginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		UsersDAO udao = new UsersDAO();
		
		String u_id = req.getParameter("u_id");
		String u_password = req.getParameter("u_password");
		
		forward.setRedirect(true);
		if(udao.login(u_id, u_password)) {
			// 로그인 성공
			HttpSession session = req.getSession();			
			session.setAttribute("u_id", u_id);
			forward.setPath("/login/index.jsp");
			
		} else {
			// 로그인 실패
			forward.setPath("/login/login.jsp");
		}
		
		return forward;
	}
	
}
