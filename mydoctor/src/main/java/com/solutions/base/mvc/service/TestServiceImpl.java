package com.solutions.base.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.solutions.base.mvc.dao.GenericDao;
import com.solutions.base.mvc.dao.TestDao;
import com.solutions.base.mvc.entity.test;

@Repository("testService")
public class TestServiceImpl extends GenericServiceImpl<test,Long> implements TestService{

	@Autowired
	public TestDao testDao;

	public TestServiceImpl() {}

	@Autowired
	public TestServiceImpl(@Qualifier("testDao") GenericDao<test, Long> genericDao) {
		super(genericDao);
		this.testDao = (TestDao) genericDao;
	}
	
	
}
