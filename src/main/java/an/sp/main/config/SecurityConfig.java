package an.sp.main.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth
                .anyRequest().permitAll()  // allow all requests
            )
            .csrf(csrf -> csrf.disable()) // disable CSRF (for forms/testing)
            .formLogin(login -> login.disable()) // disable login page
            .httpBasic(basic -> basic.disable()); // disable basic auth

        return http.build();
    }
    
    // Add the PasswordEncoder bean that your UsersService requires
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}