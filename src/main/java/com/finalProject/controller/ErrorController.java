package com.finalProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
  
 */
@Controller
public class ErrorController {

    @RequestMapping(value = "/error2")
    public String error() {
        return "error";
    }

}
