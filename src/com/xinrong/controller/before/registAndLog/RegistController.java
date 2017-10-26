package com.xinrong.controller.before.registAndLog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xinrong.bean.Users;
import com.xinrong.service.ProjectService;
import com.xinrong.service.UsersService;

@Controller
public class RegistController {
	@Autowired
	private UsersService usersService ;
	
	/**
	 * 进入注册用户页面
	 */
	@RequestMapping("xin/2.0/views/account/register4.0.shtml.htm")
	public String goIntoRegist(){
		return "xin/2.0/views/account/register3.0";
	}
	
	/**
	 * 进入注册完成页面
	 */
	@RequestMapping("xin/2.0/views/account/registerSuccess.html")
	public String goIntoSuccess(Model model,@ModelAttribute("users")Users users){
		boolean a=usersService.insertSelective(users);
		String message="";
		if(a){
			message="注册成功";
		}else{
			message="注册失败";
		}
		model.addAttribute("message", message);
		return "xin/2.0/views/account/registSucess";
	}
}