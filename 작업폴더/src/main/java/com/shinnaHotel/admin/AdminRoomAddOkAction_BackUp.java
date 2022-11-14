package com.shinnaHotel.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shinnaHotel.DAO.AdminDAO;
import com.shinnaHotel.DTO.RoomDTO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class AdminRoomAddOkAction_BackUp implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		AdminDAO adao = new AdminDAO();
		
		
		MultipartRequest multi = null;
		
		String savaFolder = "C:\\Users\\seulk\\Desktop\\jsp_workspace\\shinnaHotel\\src\\main\\webapp\\upload";
		int fileSize = 1024 * 1024 * 5; // 5M
		
		try {
			// req, 경로, 파일의 크기, 인코딩방식, 정책
			multi = new MultipartRequest(req, savaFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		int r_id = Integer.parseInt(   req.getParameter("r_id") );

		RoomDTO rdto = new RoomDTO();
		rdto.setR_id(r_id);
		rdto.setR_type(req.getParameter("r_type"));
		rdto.setR_capacity(Integer.parseInt( req.getParameter("r_capacity")));
		rdto.setR_price(Integer.parseInt( req.getParameter("r_price") ));
		rdto.setR_img(req.getParameter("r_img"));
		
		
		if(adao.insertRoom(rdto)) {
			// 성공시
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/admin/AdminRoomView.ad?r_id=" + r_id);
		} 
		return forward;
	}

}
