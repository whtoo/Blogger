/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.fxweixin.index.web;

import java.util.Date;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author wanght
 */
@Controller
@RequestMapping("welcome")
public class IndexAction {
    private final static Logger LOG = LoggerFactory.getLogger(IndexAction.class);
    
     @RequestMapping(method = RequestMethod.GET)
     public String welcome(Model model) {
        String flag = "login/welcome";
        Date date = new Date();
        model.addAttribute("date",date );
        return flag;
     }
     
    /**
     *
     * @param useremail
     * @param pwd
     * @param model
     * @return
     */
    @RequestMapping(value="/login",method = RequestMethod.POST)
     public String login(@RequestParam String useremail,@RequestParam String pwd,Model model) {
        String flag = "index";
        LOG.info("email "+useremail);
        LOG.info("pwd "+pwd);
        return flag;
     }
     
     
}
