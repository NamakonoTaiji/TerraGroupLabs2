package com.terragrouplabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.terragrouplabs.entity.ContactMessage;
import com.terragrouplabs.repository.ContactMessageRepository;
import com.terragrouplabs.service.EmailService;
import com.terragrouplabs.service.RecaptchaService;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("contactMessage")
public class ContactController {
    
    @Autowired
    private ContactMessageRepository repository;
    
    // セッション属性が見つからない場合の初期化用メソッド
    @ModelAttribute("contactMessage")
    public ContactMessage getContactMessage() {
        return new ContactMessage();
    }

    // 確認画面表示（フォーム送信時）
    @Autowired
    private RecaptchaService recaptchaService;

    @PostMapping("/contact/confirm")
    public String confirmContactForm(@Valid @ModelAttribute("contactMessage") ContactMessage contactMessage, 
                                  BindingResult bindingResult,
                                  @RequestParam(name = "g-recaptcha-response", required = false) String recaptchaResponse,
                                  Model model) {
        
        // reCAPTCHA検証
        if (!recaptchaService.verifyRecaptcha(recaptchaResponse)) {
            model.addAttribute("recaptchaError", "reCAPTCHAの検証に失敗しました。ロボットではないことを確認してください。");
            return "index";
        }
        
        // バリデーションエラーがある場合
        if (bindingResult.hasErrors()) {
            // エラー情報をモデルに追加してフォームを再表示
            model.addAttribute("validationErrors", bindingResult.getAllErrors());
            return "index"; // エラーメッセージと共にフォームを再表示
        }
        
        // 確認画面に進む
        return "confirm";
    }
    
    // 確認画面から戻る処理
    @PostMapping("/contact/back")
    public String backToForm() {
        return "index";
    }

    @Autowired
    private EmailService emailService;

    // 確認画面から送信処理
    @PostMapping("/contact")
    public String handleContactForm(@ModelAttribute("contactMessage") ContactMessage contactMessage, 
                                  SessionStatus sessionStatus,
                                  RedirectAttributes redirectAttributes) {
        
        // フォームから受け取ったデータを保存
        repository.save(contactMessage);
        
        // メール通知を送信
        emailService.sendContactNotification(contactMessage);
        
        // セッションにあるフォームデータをクリア
        sessionStatus.setComplete();
        
        // 成功メッセージをリダイレクト属性として追加
        redirectAttributes.addFlashAttribute("successMessage", "お問い合わせありがとうございました。");
        
        // Post-Redirect-Getパターンを使用してリダイレクト
        return "redirect:/thankyou";
    }

    // thankyouページ表示
    @GetMapping("/thankyou")
    public String showThankYouPage() {
        return "thankyou";
    }
}