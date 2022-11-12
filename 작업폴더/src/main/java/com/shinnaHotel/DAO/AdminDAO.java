package com.shinnaHotel.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shinnaHotel.DTO.ResCancelDTO;
import com.shinnaHotel.DTO.ReservationDTO;
import com.shinnaHotel.DTO.RoomDTO;
import com.shinnaHotel.DTO.UsersDTO;
import com.shinnaHotel.mybatis.SqlMapConfig;

public class AdminDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;

	public AdminDAO() {
		sqlSession = factory.openSession(true);
	}

	// 회원조회
	public List<UsersDTO> getAdminList() {
		List<UsersDTO> adminList = sqlSession.selectList("Admin.getAdminList");

		return adminList;
	}

	// 예약내역조회
	public List<ReservationDTO> getAdminReserveList(String u_id) {
		List<ReservationDTO> reserveList = sqlSession.selectList("Admin.getAdminReserveList",u_id);

		return reserveList;
	}
	
	// 예약취소내역 조회
	public List<ResCancelDTO>  getAdminReserveCancelList(String u_id) {
		List<ResCancelDTO> reserveCancelList = sqlSession.selectList("Admin.getAdminReserveCancelList",u_id);

		return reserveCancelList;
	}
	
	// 매출액내역 조회
	public List<ReservationDTO> getSalesList() {
		List<ReservationDTO> salesList = sqlSession.selectList("Admin.getSalesList");

		return salesList;
	}
	// 방정보 조회
	public List<RoomDTO> getRoomList() {
		List<RoomDTO> roomList = sqlSession.selectList("Admin.getRoomList");
		
		return roomList;
	}

	// 회원 삭제
	public boolean deleteMember(String u_id) {
		boolean result = false;

		if (sqlSession.delete("Admin.deleteMember", u_id) == 1) {
			result = true;
		}

		return result;
	}

	// 예약회원 삭제
	public boolean deleteReserve(int res_number) {
		boolean result = false;
		
		if (sqlSession.delete("Admin.deleteReserve", res_number) == 1) {
			result = true;
		}

		return result;
	}

	// 회원 변경
	public boolean updateMemberOk(UsersDTO udto) {
		boolean result = false;
		if(sqlSession.update("Admin.updateMemberOk",udto) != 0) {
			result = true;
		}
		return result;
	}

	// 매출 수
	public int getSalesCnt() {
		return sqlSession.selectOne("Admin.getSalesCnt");
	// 회원 수
	}
	public int getMemCnt() {
		return sqlSession.selectOne("Admin.getMemCnt");
	// 예약 수
	}
	public int getReserveCnt() {
		return sqlSession.selectOne("Admin.getReserveCnt");
	}
	// 객실 수
	public int getRoomCnt() {
		return sqlSession.selectOne("Admin.getRoomCnt");
	}
	
	// 객실 추가
	public boolean insertRoom(RoomDTO rdto) {
		boolean result = false;
		
		if(sqlSession.insert("Admin.insertRoom", rdto) == 1) {
			result = true;
		}
		return result;		
	}
	// 객실 상세정보
	public RoomDTO getDetail(int r_id) {
		return (RoomDTO)sqlSession.selectOne("Admin.getDetail",r_id);
	}
	// 객실 수정
	public boolean updateRoom(RoomDTO rdto) {
		boolean result = false;
		
		if(sqlSession.update("Admin.updateRoom",rdto) != 0) {
			result = true;
		}
		return result;
	}
	// 객실 삭제
	public boolean deleteRoom(int r_id) {
		boolean result = false;
		
		if(sqlSession.update("Admin.deleteRoom",r_id) != 0) {
			result = true;
		}
		return result;
	}
	
	public boolean insertResCancel(ResCancelDTO rcdto) {
		boolean result = false;
		
		if(sqlSession.insert("Admin.insertResCancel", rcdto) != 0) {
			result = true;
		}
		
		return result;	
	}

	public boolean updateReservation(int res_number) {
		boolean result = false;
		
		if(sqlSession.delete("Admin.updateReservation", res_number) != 0) {
			result = true;
		}
		return result;
		
	}


	


}
