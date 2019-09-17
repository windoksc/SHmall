package com.sm.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Product {
	@Autowired
	private SqlSession sqlSession;
	private static final String Namespace = "com.sm.project.mapper.productMapper";
	
	public void addProduct(Map<String,Object> product) throws Exception {
		sqlSession.insert("addProduct", product);
	}
	
	public void editProduct(Map<String,Object> product) throws Exception {
		sqlSession.update("editProduct", product);
	}
	
	public void delProduct(int productId) throws Exception {
		sqlSession.delete("delProduct", productId);
	}
	
	public List<HashMap<String,Object>> getListProducts() throws Exception {
		 return sqlSession.selectList("getListProducts");
	}
	
	public HashMap<String,Object> getOneProduct(int productId) throws Exception {
		 return sqlSession.selectOne("getOneProduct", productId);
	}
}
