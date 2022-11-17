package com.shinnaHotel.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class RoomUpdateAction implements Action{
	// DB에서 바로 insert 시 필요 없을 수 있음

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		
		return forward;
	}
}
