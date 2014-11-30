package org.um2.taskboard.web.controllers;

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
    @RequestMapping(name="home", value="/", method= RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    

}
