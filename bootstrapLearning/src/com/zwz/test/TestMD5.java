package com.zwz.test;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class TestMD5 {

	public static void main(String[] args) {

		Md5PasswordEncoder pass=new Md5PasswordEncoder();
		String a=pass.encodePassword("123456", "admin");
		System.out.println(a);
	}

}
