package com.zwz.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.zwz.pojo.UserBean;

public interface IUserService {

		public UserBean getUserById(int id);
		public ArrayList<UserBean> listUserByName(String userName);
		public void addUser(UserBean user);
		public void editUser(UserBean userBean);
		public void deleteUserById(int id);
		public void resetPassById(@Param("id")int id,@Param("password")String password);
}	

