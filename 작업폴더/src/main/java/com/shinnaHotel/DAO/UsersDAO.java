package com.shinnaHotel.DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shinnaHotel.mybatis.SqlMapConfig;

public class UsersDAO {

	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UsersDAO() {
		sqlSession = factory.openSession(true);
	}
	
	
}
