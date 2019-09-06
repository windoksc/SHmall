package com.sm.project;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Ser {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.com.mapper.memberMapper";
	
	public int login(Map<String,Object> login) throws Exception {
		return sqlSession.selectOne("login",login);
	}
	
	public void singup(Map<String,Object> map) throws Exception {
		 sqlSession.insert("singup", map);
	}

}
