package com.terragrouplabs.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
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
                // 公開ページへのアクセス許可
                .requestMatchers("/", "/about", "/service", "/contact/**", "/thankyou", 
                                 "/css/**", "/js/**", "/images/**", "/login", "/error").permitAll()
                // 管理者ページは認証が必要
                .requestMatchers("/admin/**").hasRole("ADMIN")
                // その他のリクエストは認証が必要
                .anyRequest().authenticated()
            )
            .formLogin((form) -> form
                .loginPage("/login")  // カスタムログインページ
                .defaultSuccessUrl("/admin/messages", true)  // ログイン成功後のリダイレクト先
                .permitAll()
            )
            .logout((logout) -> logout
                .logoutSuccessUrl("/")  // ログアウト後のリダイレクト先
                .permitAll()
            );

        return http.build();
    }

    @Bean
    public InMemoryUserDetailsManager userDetailsService() {
        UserDetails admin = User.withDefaultPasswordEncoder()
            .username("admin")
            .password("adminpass")
            .roles("ADMIN")
            .build();
        return new InMemoryUserDetailsManager(admin);
    }
}