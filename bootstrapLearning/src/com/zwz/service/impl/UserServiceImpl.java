package com.zwz.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zwz.dao.IUserDao;
import com.zwz.pojo.UserBean;
import com.zwz.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;

	@Override
	public UserBean getUserById(int id) {
		return this.userDao.getUserById(id);
	}

	@Override
	public ArrayList<UserBean> listUserByName(String userName) {
		return this.userDao.listUserByName(userName);
	}

	@Override
	public void addUser(UserBean user) {
		this.userDao.addUser(user);
	}

	@Override
	public void deleteUserById(int id) {
		this.userDao.deleteUserById(id);
	}

	@Override
	public void resetPassById(int id, String password) {
		this.userDao.resetPassById(id, password);
	}

	@Override
	public void editUser(UserBean userBean) {
		this.userDao.editUser(userBean);
		
	}

}
