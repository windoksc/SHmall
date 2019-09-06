package com.sm.project;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Ser {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.sm.project.mapper.memberMapper";
	
	public  List<Map<String,Object>> login(Map<String,Object> login) throws Exception {
		return sqlSession.selectList("login",login);
	}
	
	public void singup(Map<String,Object> map) throws Exception {
		 sqlSession.insert("sigin", map);
	}

}
