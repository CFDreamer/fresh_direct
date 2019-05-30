package com.yearjane.dto;

import java.util.List;

import com.yearjane.entity.UserInfo;
import com.yearjane.enums.ResultResponseEnum;

/**
 * 
 * @author 
 * UserInfoExecution
 */
public class UserInfoExecution extends BaseExecution{

	private UserInfo userInfo;
	private List<UserInfo> list;
	
	public List<UserInfo> getList() {
		return list;
	}

	public void setList(List<UserInfo> list) {
		this.list = list;
	}

	/**
	 * 操作失败的构造器
	 * 注册成功的构造器
	 * @param responseEnum
	 */
	public UserInfoExecution(ResultResponseEnum responseEnum,Boolean status) {
		super(responseEnum,status);

	}

	/**
	 * 操作成功的构造器
	 * 
	 * @param responseEnum
	 * @param userInfo
	 */
	public UserInfoExecution(ResultResponseEnum responseEnum, UserInfo userInfo,Boolean status) {
		super(responseEnum,status);
		this.userInfo = userInfo;


	}
	public UserInfoExecution(ResultResponseEnum responseEnum, List<UserInfo> list,Boolean status) {
		super(responseEnum,status);
		this.list = list;


	}
	public UserInfoExecution() {

	}
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}


}
