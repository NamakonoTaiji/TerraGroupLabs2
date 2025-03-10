package com.terragrouplabs.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests((requests) -> requests
                // 静的リソースとログインページをすべて公開
                .requestMatchers(
                    "/", "/index", "/about", "/service", 
                    "/contact/**", "/thankyou", "/css/**", 
                    "/js/**", "/images/**", "/login", "/error"
                ).permitAll()
                // 管理者ページだけ認証必要
                .requestMatchers("/admin/**").hasRole("ADMIN") // authenticated()からhasRole("ADMIN")に変更
                // その他のリクエストはすべて許可
                .anyRequest().permitAll()
            )
            .formLogin((form) -> form
                .loginPage("/login")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/", true)
                .permitAll()
            );
        
        return http.build();
    }
    
    @Bean
    public InMemoryUserDetailsManager userDetailsService() {
        UserDetails user = org.springframework.security.core.userdetails.User
            .withUsername("admin")
            .password("{noop}password") // 開発環境用の平文パスワード
            .roles("ADMIN")
            .build();
        return new InMemoryUserDetailsManager(user);
    }
}