package com.hwrky.shop.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hwrky.shop.entity.User;
import com.hwrky.shop.service.sysUserService;
@Controller
public class longinction {
	@Resource(name="userservice")
	private sysUserService userservice;
	@RequestMapping("/loginaction")
	@ResponseBody
	public boolean login(String username,String password){
		User user =new User();
		user.setUser_name(username);
		user.setUser_pwd(password);
		int count=userservice.SelectUser(user);
		System.out.println("有"+count+"条数据");
		if(count==1) {
			return true;
		}else {
			return false;
		}
	}
 
}