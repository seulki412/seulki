package com.shinnaHotel.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.DAO.ReservationDAO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class ReservationCancelAction implements Action{
	// 예약 취소하기
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		ReservationDAO rdao = new ReservationDAO();
		
		int res_number = Integer.parseInt(req.getParameter("resnum"));
		
		if(rdao.res_delete(res_number)) {
			forward.setRedirect(false);
			forward.setPath(req.getContextPath() + );
		}
		
		return forward;
	}
	 
}
