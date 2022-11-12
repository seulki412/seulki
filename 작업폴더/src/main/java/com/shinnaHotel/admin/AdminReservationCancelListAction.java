package com.shinnaHotel.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shinnaHotel.DAO.AdminDAO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class AdminReservationCancelListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDAO adao = new AdminDAO();
		
		int totalCnt = adao.getReserveCnt();
		HttpSession session = req.getSession();		
		String u_id = (String)session.getAttribute("u_id");

		req.setAttribute("adminReserveCancelList", adao.getAdminReserveCancelList(u_id));
		req.setAttribute("totalCnt", totalCnt);
		
		System.out.println("액션도착");
		forward.setRedirect(false);
		forward.setPath("/admin/ReservationList.jsp" );
		return forward;
		
	
	}

}
