package com.shinnaHotel.DAO;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shinnaHotel.DTO.UsersDTO;
import com.shinnaHotel.mybatis.SqlMapConfig;

public class UsersDAO {

	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UsersDAO() {
		sqlSession = factory.openSession(true);
	}
	
	// 회원가입
	public boolean insertUsers(UsersDTO userdto) {
		boolean result = false;
		
		if(sqlSession.insert("User.insertUsers", userdto) == 1) {
			result = true;
		}
		
		return result;		
	}
	
	// 로그인
	public boolean login(String u_id, String u_password) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("u_id", u_id);
		datas.put("u_password", u_password);
		boolean result = false;
		
		if((Integer)sqlSession.selectOne("User.login",datas) == 1) {
			result = true;
		}

		return result;
	}
}

