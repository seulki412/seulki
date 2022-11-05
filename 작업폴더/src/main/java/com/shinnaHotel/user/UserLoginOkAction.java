package com.shinnaHotel.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.DAO.UsersDAO;
import com.shinnaHotel.DTO.UsersDTO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class UserLoginOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		
		return forward;
	}

}
