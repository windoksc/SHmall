package com.sm.project;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class Ser {
	
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.com.mapper.memberMapper";
}
