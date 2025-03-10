package com.terragrouplabs.service;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class RecaptchaService {

    @Value("${google.recaptcha.secret}")
    private String recaptchaSecret;
    
    private static final String RECAPTCHA_VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify";
    
    public boolean verifyRecaptcha(String recaptchaResponse) {
    	
        if (recaptchaResponse == null || recaptchaResponse.isEmpty()) {
            System.out.println("reCAPTCHA response is null or empty");
            return false;
        }
        
        try {
            String params = "secret=" + recaptchaSecret + "&response=" + recaptchaResponse;
            System.out.println("Secret key: " + recaptchaSecret.substring(0, 3) + "..." + 
                              (recaptchaSecret.length() > 6 ? recaptchaSecret.substring(recaptchaSecret.length() - 3) : ""));
            
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(RECAPTCHA_VERIFY_URL))
                    .header("Content-Type", "application/x-www-form-urlencoded")
                    .POST(HttpRequest.BodyPublishers.ofString(params))
                    .build();
            
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            System.out.println("reCAPTCHA API Response: " + response.body());
            
            JsonObject jsonObject = JsonParser.parseString(response.body()).getAsJsonObject();
            return jsonObject.get("success").getAsBoolean();
        } catch (IOException | InterruptedException e) {
            System.out.println("Error during reCAPTCHA verification: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}