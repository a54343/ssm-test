package com.hwrky.shop.dao;

import org.apache.ibatis.annotations.Param;

import com.hwrky.shop.entity.User;

public interface Usermapper {
	Integer SelectUser(@Param("user") User user);

}
