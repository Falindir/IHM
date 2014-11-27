package org.um2.taskboard.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController
{
	@RequestMapping(value="/")
	public String hello()
	{
		return "index";
	}
	
	
}
