package com.terragrouplabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.terragrouplabs.entity.ContactMessage;
import com.terragrouplabs.repository.ContactMessageRepository;

@Controller
public class ContactController {

    @Autowired
    private ContactMessageRepository repository;

    @PostMapping("/contact")
    public String handleContactForm(ContactMessage contactMessage) {
        // フォームから受け取ったデータを保存
        repository.save(contactMessage);
        return "thankyou"; // thankyou.jsp を表示
    }
}
