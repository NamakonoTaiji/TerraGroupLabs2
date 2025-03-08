package com.terragrouplabs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String showHomePage() {
        return "index"; // ビュー名。ビューリゾルバにより /WEB-INF/views/index.jsp が表示される
    }
}
