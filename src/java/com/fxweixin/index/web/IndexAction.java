/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fxweixin.index.web;

import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author wanght
 */
@Controller
@RequestMapping("welcome")
public class IndexAction {
     @RequestMapping(method = RequestMethod.GET)
     public String welcome(Model model) {
        String flag = "welcome";
        Date date = new Date();
        model.addAttribute("date",date );
        return flag;
     }
     
     
}
