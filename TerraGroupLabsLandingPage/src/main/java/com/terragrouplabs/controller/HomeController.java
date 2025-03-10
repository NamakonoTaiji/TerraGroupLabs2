package com.terragrouplabs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.terragrouplabs.entity.ContactMessage;

@Controller
public class HomeController {

    @GetMapping("/")
    public String showHomePage(Model model) {
        // フォームオブジェクトを初期化
        model.addAttribute("contactMessage", new ContactMessage());
        return "index";
    }
}