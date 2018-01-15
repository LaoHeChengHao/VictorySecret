package dao.impl;

import static org.junit.Assert.*;

import org.junit.Test;

import entity.User;

public class UserDaoImplTest {

	@Test
	public void testGetUserByOne() {
		UserDaoImpl udi=new UserDaoImpl();
		String userName="21312";
		User userByOne = udi.getUserByOne(userName);
		System.out.println(userByOne);
	}

}
