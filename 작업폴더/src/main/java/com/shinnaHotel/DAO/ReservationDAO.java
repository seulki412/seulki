package com.shinnaHotel.DAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shinnaHotel.mybatis.SqlMapConfig;

public class ReservationDAO {

	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public ReservationDAO() {
		sqlSession = factory.openSession(true);
	}
}
