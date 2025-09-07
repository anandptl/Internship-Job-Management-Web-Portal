package an.sp.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import an.sp.main.entities.Users;
import an.sp.main.services.UsersService;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

    @Autowired
    private UsersService usersService;

    // Load the home page 
    @GetMapping("/")
    public String homepage(){
        return "home";
    }

    // login and signup page 
    @GetMapping("/login")
    public String loginPage(Model model) {
        model.addAttribute("user", new Users());
        return "Signup-Signin";
    }

    // Handle user registration
    @PostMapping("/logPage")
    public String registerUser(@ModelAttribute("user") Users users, Model model) {
        boolean status = usersService.registerUsers(users);

        if (status) {
            model.addAttribute("Successfull", "User Registered Successfully");
        } else {
            model.addAttribute("Error", "User not Registered due to some error");
        }

        return "Signup-Signin";
    }

    // Handle user login
    @PostMapping("/loginUser")
    public String loginUser(@ModelAttribute("user") Users users, Model model, HttpSession session) {
        try {
            Users loggedUser = usersService.loginUsers(
                    users.getEmail(),
                    users.getPassword(),
                    users.getRole()
            );

            if (loggedUser != null) {
                // Store user in session
                session.setAttribute("loggedInUser", loggedUser);

                switch (loggedUser.getRole().toUpperCase()) {
                    case "STUDENT":
                        model.addAttribute("student", loggedUser);
                        model.addAttribute("Successfull", "Welcome : " + loggedUser.getUsername());
                        return "Student";

                    case "RECRUITER":
                        model.addAttribute("recruiter", loggedUser);
                        model.addAttribute("Successfull", "Welcome :" + loggedUser.getUsername());
                        return "Recruiter";

                    case "ADMIN":
                        model.addAttribute("admin", loggedUser);
                        model.addAttribute("Successfull", "Welcome : " + loggedUser.getUsername());
                        return "Admin";

                    default:
                        model.addAttribute("Error", "Invalid role: " + loggedUser.getRole());
                        return "Signup-Signin";
                }
            } else {
                model.addAttribute("Error", "Invalid email, password, or role");
                return "Signup-Signin";
            }
        } catch (Exception e) {
            model.addAttribute("Error", "An error occurred during login: " + e.getMessage());
            System.out.println("Login error: " + e.getMessage());
            e.printStackTrace();
            return "Signup-Signin";
        }
    }

    // Logout session
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
        return "Signup-Signin"; // JSP page
    }

    @GetMapping("/homepage")
    public String HomePage(){
        return "home";
    }
}
