package com.zwz.test;

import java.io.UnsupportedEncodingException;

import org.junit.Test;

public class Encoding {
	public String a="中文";
	@Test
	public void consoleUtf(){
		System.out.println(a);
	}
	@Test
	public void consoleGBK() throws UnsupportedEncodingException {
		String b=new String(a.getBytes(),"GBK");
		System.out.println(b);

	}
	

}
