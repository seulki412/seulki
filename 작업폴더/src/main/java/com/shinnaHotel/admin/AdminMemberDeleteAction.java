package com.shinnaHotel.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.exceptions.PersistenceException;

import com.shinnaHotel.DAO.AdminDAO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class AdminMemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDAO adao = new AdminDAO();

		String u_id = req.getParameter("u_id");

		try {
//			삭제 성공시
			if (adao.deleteMember(u_id)) {
				forward.setRedirect(true);
				forward.setPath(req.getContextPath() + "/admin/AdminMemberList.ad?u_id=" + u_id);
			}
		} catch (PersistenceException e) {
//			삭제 실패시
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/admin/AdminMemberList.ad");
			e.printStackTrace();
		}
		return forward;
	}
}
