package com.shinnaHotel.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class ReservationCancelAction implements Action{
	// 예약 취소하기
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		
		return forward;
	}
	 
}
