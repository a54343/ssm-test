package com.hwrky.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwrky.shop.dao.Usermapper;
import com.hwrky.shop.entity.User;
import com.hwrky.shop.service.sysUserService;
@Service("userservice")
public class UserServiceImpl implements sysUserService {
@Autowired
	private Usermapper usermapper;

@Override
public Integer SelectUser(User user) {
	
	return usermapper.SelectUser(user);
}
}
