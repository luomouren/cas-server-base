package com.weisi.veems.frame.utils;

import org.apache.shiro.crypto.hash.ConfigurableHashService;
import org.apache.shiro.crypto.hash.DefaultHashService;
import org.apache.shiro.crypto.hash.HashRequest;
import org.apache.shiro.util.ByteSource;

/**
 * @author:luomouren
 * @description:
 * @dateTime: created in  2018-10-31 14:50
 * @modified by:
 **/
public class PasswordSalt {
	/**
	 * 静态盐值
	 */
	private static final String STATIC_SALT = ".";
	/**
	 * 对处理盐值后的算法
	 */
	private static final  String ALGORITHM_NAME = "MD5";

	/**
	 * 对登录密码盐值处理
	 * @param username 账号
	 * @param password 密码
	 * @throws Exception
	 */
	public static String encryPassword(String username,String password) throws Exception {
		ConfigurableHashService hashService = new DefaultHashService();
		// 静态盐值
		hashService.setPrivateSalt(ByteSource.Util.bytes(STATIC_SALT));
		hashService.setHashAlgorithmName(ALGORITHM_NAME);
		// 加密迭代次数
		hashService.setHashIterations(2);
		HashRequest request = new HashRequest.Builder()
				.setSalt(username)
				.setSource(password)
				.build();
		String res =  hashService.computeHash(request).toHex();
		System.out.println(res);
		return  res;
	}

	public static void main(String[] args) {
		try {
			PasswordSalt.encryPassword("lisi","password");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
