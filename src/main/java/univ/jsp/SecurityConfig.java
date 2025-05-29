package univ.jsp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.config.Customizer;

@Configuration
public class SecurityConfig {

    @Bean
    public UserDetailsService userDetailsService() {
        UserDetails user1 = User.withUsername("tomcat")
                .password("{noop}tomcat1234")
                .roles("tomcat")
                .build();

        UserDetails user2 = User.withUsername("both")
                .password("{noop}both1234")
                .roles("tomcat", "role1")
                .build();

        UserDetails user3 = User.withUsername("role1")
                .password("{noop}role1234")
                .roles("role1")
                .build();

        UserDetails admin = User.withUsername("admin")
                .password("{noop}admin1234")
                .roles("admin")
                .build();

        return new InMemoryUserDetailsManager(user1, user2, user3, admin);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/css/**", "/js/**", "/images/**", "/ch11/**" ).permitAll()             // 정적 자원 허용
                        .requestMatchers("/",
                                "/index.jsp",
                                "/login.jsp",
                                "/logout.jsp",
                                "/error",
                                "/error.jsp").permitAll() // 로그인 페이지 허용
                        .requestMatchers("/addBook.jsp").hasRole("admin")          // 관리자 전용 페이지
                        .anyRequest().authenticated()                              // 나머지는 인증 필요
                )
                .formLogin(login -> login
                        .loginPage("/login.jsp")               // 사용자 정의 로그인 페이지
                        .failureUrl("/login.jsp?error") // 로그인 실패 시 이동
                        .defaultSuccessUrl("/index.jsp", true)
                        .permitAll()
                )
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .logoutSuccessUrl("/login.jsp")
                        .permitAll()
                );
        return http.build();
    }
}
