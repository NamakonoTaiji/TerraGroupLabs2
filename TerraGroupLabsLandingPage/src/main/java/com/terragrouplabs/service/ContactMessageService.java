package com.terragrouplabs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.terragrouplabs.entity.ContactMessage;
import com.terragrouplabs.repository.ContactMessageRepository;

@Service
public class ContactMessageService {

    @Autowired
    private ContactMessageRepository contactRepository;
    
    /**
     * お問い合わせメッセージを保存します
     * @param message 保存するメッセージ
     * @return 保存されたメッセージ
     */
    public ContactMessage saveMessage(ContactMessage message) {
        return contactRepository.save(message);
    }
}