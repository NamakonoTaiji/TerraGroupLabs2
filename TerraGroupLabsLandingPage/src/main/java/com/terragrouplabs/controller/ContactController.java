package com.terragrouplabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.terragrouplabs.entity.ContactMessage;
import com.terragrouplabs.repository.ContactMessageRepository;

import jakarta.validation.Valid;

@Controller
public class ContactController {
    @Autowired
    private ContactMessageRepository repository;

    // ルートURLへのマッピングを削除し、thankyouページ専用にする
    @GetMapping("/thankyou")
    public String showThankYouPage() {
        return "thankyou";
    }

    @PostMapping("/contact")
    public String handleContactForm(@Valid @ModelAttribute("contactMessage") ContactMessage contactMessage, 
                                  BindingResult bindingResult,
                                  RedirectAttributes redirectAttributes,
                                  Model model) {
        
        // バリデーションエラーがある場合
        if (bindingResult.hasErrors()) {
            // エラー情報をモデルに追加してフォームを再表示
            model.addAttribute("validationErrors", bindingResult.getAllErrors());
            return "index"; // エラーメッセージと共にフォームを再表示
        }
        
        // フォームから受け取ったデータを保存
        repository.save(contactMessage);
        
        // 成功メッセージをリダイレクト属性として追加
        redirectAttributes.addFlashAttribute("successMessage", "お問い合わせありがとうございました。");
        
        // Post-Redirect-Getパターンを使用してリダイレクト
        return "redirect:/thankyou";
    }
}