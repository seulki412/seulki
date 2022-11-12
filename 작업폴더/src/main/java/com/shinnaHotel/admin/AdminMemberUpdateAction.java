package com.shinnaHotel.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.DAO.AdminDAO;
import com.shinnaHotel.DAO.UsersDAO;
import com.shinnaHotel.DTO.UsersDTO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class AdminMemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDAO adao = new AdminDAO();
		
//		String u_status = req.getParameter("u_status");
//
//		req.setAttribute("u_status", adao.getDetail(u_status));
//		
//		forward.setRedirect(false);
//		forward.setPath("/admin/allmember.jsp");
		
		return forward;
	}
}
