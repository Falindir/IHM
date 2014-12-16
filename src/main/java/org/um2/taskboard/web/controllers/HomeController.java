package org.um2.taskboard.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.um2.taskboard.model.User;
import org.um2.taskboard.service.UserService;

/**
 * Created by BEUGNON on 15/11/2014.
 */

@Controller
public class HomeController
{
	
	@Autowired
	UserService us;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("index");
		if (request.getSession().getAttribute("user") != null)
			mav.setViewName("redirect:/board/");
		
		return mav;
	}
	
	@RequestMapping(value = "/connection", method = RequestMethod.POST)
	public ModelAndView connection(HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("index");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		password = DigestUtils.md5DigestAsHex(password.getBytes());
		User u = us.findUserByMail(login);
		
		if (u != null && u.getPassword().equals(password))
		{
			request.getSession().setAttribute("user", u);
			mav.setViewName("redirect:/board/");
			return mav;
		}
		else
		{
			mav.setViewName("redirect:/");
		}
		
		mav.addObject("alert", "Wrong Credentials !");
		return mav;
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		request.getSession().invalidate();
		System.gc();
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	}
	
	@RequestMapping(name = "inscription", value = "/inscription", method = RequestMethod.POST)
	public ModelAndView inscription(HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("index");
		String login = request.getParameter("email");
		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		// TODO DO SOME PASSWORD DISGESTING
		String password = request.getParameter("password");
		password = DigestUtils.md5DigestAsHex(password.getBytes());
		
		User u = us.findUserByMail(login);
		
		if (u != null && u.getPassword().equals(password))
		{
			mav.addObject("alert", "Already use mail !");
			return mav;
		}
		
		u = new User();
		u.setUsername(login);
		u.setFirstname(firstname);
		u.setLastName(lastname);
		u.setPassword(password);
		
		us.saveUser(u);
		
		request.getSession().setAttribute("user", u);
		
		mav.addObject("alert", "Successful inscription !");
		mav.setViewName("redirect:/board/");
		return mav;
		
	}
	
}
