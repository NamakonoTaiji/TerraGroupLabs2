// ContactController.java の修正
package com.terragrouplabs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.terragrouplabs.service.ContactMessageService;
import com.terragrouplabs.service.EmailService;
import com.terragrouplabs.service.RecaptchaService;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("contactMessage")
public class ContactController {
    
    private static final Logger logger = LoggerFactory.getLogger(ContactController.class);
    
    @Autowired
    private ContactMessageService contactMessageService;
    
    @Autowired
    private EmailService emailService;
    
    @Autowired
    private RecaptchaService recaptchaService;
    
    // セッション属性が見つからない場合の初期化用メソッド
    @ModelAttribute("contactMessage")
    public ContactMessage getContactMessage() {
        return new ContactMessage();
    }

    // 確認画面表示（フォーム送信時）
    @PostMapping("/contact/confirm")
    public String confirmContactForm(
            @Valid @ModelAttribute("contactMessage") ContactMessage contactMessage, 
            BindingResult bindingResult,
            @RequestParam(name = "g-recaptcha-response", required = false) String recaptchaResponse,
            RedirectAttributes redirectAttributes) {
        
        logger.debug("reCAPTCHA Response: {}", recaptchaResponse);
        
        // reCAPTCHA検証
        boolean verified = recaptchaService.verifyRecaptcha(recaptchaResponse);
        logger.debug("reCAPTCHA Verified: {}", verified);
        
        // バリデーションエラーまたはreCAPTCHAエラーの場合
        if (bindingResult.hasErrors() || !verified) {
            if (!verified) {
                redirectAttributes.addFlashAttribute("recaptchaError", 
                    "reCAPTCHAの検証に失敗しました。ロボットではないことを確認してください。");
            }
            
            // エラー情報とフォームデータを保持
            redirectAttributes.addFlashAttribute("org.springframework.validation.BindingResult.contactMessage", 
                bindingResult);
            redirectAttributes.addFlashAttribute("contactMessage", contactMessage);
            redirectAttributes.addFlashAttribute("hasError", true);
            
            return "redirect:/#contact";
        }
        
        return "confirm";
    }
    
    // 確認画面から戻る処理
    @PostMapping("/contact/back")
    public String backToForm() {
        return "redirect:/#contact";
    }

    // 確認画面から送信処理
    @PostMapping("/contact")
    public String handleContactForm(
            @ModelAttribute("contactMessage") ContactMessage contactMessage, 
            SessionStatus sessionStatus,
            RedirectAttributes redirectAttributes) {
        
        try {
            // フォームから受け取ったデータを保存
            contactMessageService.saveMessage(contactMessage);
            
            // メール通知を送信
            emailService.sendContactNotification(contactMessage);
            
            // セッションにあるフォームデータをクリア
            sessionStatus.setComplete();
            
            // 成功メッセージをリダイレクト属性として追加
            redirectAttributes.addFlashAttribute("successMessage", 
                "お問い合わせありがとうございました。");
            
            return "redirect:/thankyou";
        } catch (Exception e) {
            logger.error("お問い合わせの処理中にエラーが発生しました", e);
            redirectAttributes.addFlashAttribute("errorMessage", 
                "処理中にエラーが発生しました。しばらくしてからもう一度お試しください。");
            return "redirect:/#contact";
        }
    }

    // thankyouページ表示
    @GetMapping("/thankyou")
    public String showThankYouPage(Model model) {
        model.addAttribute("pageTitle", "お問い合わせありがとうございました");
        model.addAttribute("currentPage", "contact");
        return "thankyou";
    }
}