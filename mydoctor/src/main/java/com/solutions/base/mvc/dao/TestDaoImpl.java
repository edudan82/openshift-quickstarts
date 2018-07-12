package com.solutions.base.mvc.dao;

import org.springframework.stereotype.Repository;

import com.solutions.base.mvc.entity.test;

@Repository("testDao")
public class TestDaoImpl extends GenericDaoImpl<test,Long> implements TestDao{

	
	
}
