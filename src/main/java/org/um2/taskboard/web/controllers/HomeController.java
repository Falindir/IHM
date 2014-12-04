package org.um2.taskboard.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by BEUGNON on 15/11/2014.
 */

@Controller
public class HomeController
{
    @RequestMapping(value="/", method= RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    
    @RequestMapping(value="/login",method=RequestMethod.POST)
    public ModelAndView login()
    {
    	 ModelAndView mav = new ModelAndView("index");
         return mav;
    }
    
    @RequestMapping(value="/logout",method=RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request)
    {
    	request.getSession().invalidate();
    	System.gc();
    	ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    

}
