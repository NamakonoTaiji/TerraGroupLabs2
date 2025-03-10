package com.terragrouplabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.terragrouplabs.entity.ContactMessage;
import com.terragrouplabs.service.ServiceService;

@Controller
public class HomeController {

    @Autowired
    private ServiceService serviceService;
    
    @Value("${google.recaptcha.key}")
    private String recaptchaSiteKey;
    
    @GetMapping("/")
    public String showHomePage(Model model) {
        // フォームオブジェクトを初期化
        model.addAttribute("contactMessage", new ContactMessage());
        
        // サービス一覧をモデルに追加
        model.addAttribute("services", serviceService.getAllServices());
        
        // reCAPTCHAサイトキーを追加
        model.addAttribute("recaptchaSiteKey", recaptchaSiteKey);
        
        return "index";
    }
    
    @GetMapping("/about")
    public String showAboutPage() {
        return "about";
    }
    
    @GetMapping("/service")
    public String showServicePage(Model model) {
        // サービス一覧をモデルに追加
        model.addAttribute("services", serviceService.getAllServices());
        return "service";
    }
}