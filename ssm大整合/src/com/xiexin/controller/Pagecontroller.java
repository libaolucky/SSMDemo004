package com.xiexin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Pagecontroller {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/")
    public String index1(){
        return "index";
    }
    @RequestMapping("/addBusiness")
    public String addBusiness(){
        return "addBusiness";
    }

    @RequestMapping("/vuedemo00")
    public String vuedemo00(){
        return "vuedemo00";
    }
    @RequestMapping("/vuedemo01")
    public String vuedemo01(){
        return "vuedemo01";
    }

}
