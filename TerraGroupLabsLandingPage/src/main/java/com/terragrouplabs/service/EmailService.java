package com.terragrouplabs.service;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.terragrouplabs.entity.ContactMessage;

@Service
public class EmailService {

    private final JavaMailSender mailSender;
    
    // コンストラクタインジェクションに変更
    public EmailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }
    
    public void sendContactNotification(ContactMessage message) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo("myukere@kbox.li");  // 管理者のメールアドレス
        mailMessage.setSubject("新しいお問い合わせ: " + message.getName());
        mailMessage.setText("名前: " + message.getName() + "\n" +
                           "メール: " + message.getEmail() + "\n" +
                           "メッセージ: " + message.getMessage());
        
        mailSender.send(mailMessage);
    }
}