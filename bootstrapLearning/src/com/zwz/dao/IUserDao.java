package com.zwz.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.zwz.pojo.UserBean;

public interface IUserDao {
	/**
	 * 获取最新的信息
	 */
	public UserBean getUserById(int id);
	public ArrayList<UserBean> listUserByName(String userName);
	public void addUser(UserBean user);
	public void editUser(UserBean userBean);
	public void deleteUserById(int id);
	public void resetPassById(@Param("id")int id,@Param("password")String password);
	

}
