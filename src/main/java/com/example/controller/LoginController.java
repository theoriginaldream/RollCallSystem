package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/log")
public class LoginController{
    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String Login(String username, String password, Model model, HttpSession session){
        if (!username.equals("")){
            if (!password.equals("")){
                session.setAttribute("admin",username);
                return "redirect:/student/allStudent";
            }else {
                session.setAttribute("msg","密码错误");
                return "redirect:/log/toLogin";
            }
        }else {
            session.setAttribute("msg","用户名错误");
            return "redirect:/log/toLogin";
        }
    }
}
