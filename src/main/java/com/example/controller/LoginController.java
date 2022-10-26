package com.example.controller;

import com.example.pojo.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/log")
public class LoginController{

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String Login(String username, String password, Model model, HttpSession session){
        User user = userService.queryUserByName(username);
        if (user!=null){
            if (user.getPassword().equals(password)){
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
