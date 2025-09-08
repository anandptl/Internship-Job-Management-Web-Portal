package an.sp.main.controller;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;

import an.sp.main.entities.Users;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

//    private StudentProfileService studentProfileService; // inject service
    
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {
        Users student = (Users) session.getAttribute("loggedInUser");
        if (student == null) {
            return "redirect:/"; // login page
        }
        model.addAttribute("student", student);
        return "StudentDashboard"; // dashboard.jsp
    }

    @GetMapping("/StudentProfile")
    public String studentProfile(HttpSession session, Model model) {
        Users student = (Users) session.getAttribute("loggedInUser");
        if (student == null) {
            return "redirect:/";
        }
        model.addAttribute("student", student);
        return "StudentProfile"; // StudentProfile.jsp
    }

    @GetMapping("/applyJob")
    public String applyJob(HttpSession session, Model model) {
        Users student = (Users) session.getAttribute("loggedInUser");
        if (student == null) {
            return "redirect:/";
        }
        model.addAttribute("student", student);
        return "ApplyJob"; // ApplyJob.jsp
    }

    @GetMapping("/myApplications")
    public String myApplications(HttpSession session, Model model) {
        Users student = (Users) session.getAttribute("loggedInUser");
        if (student == null) {
            return "redirect:/";
        }
        model.addAttribute("student", student);
        return "MyApplications"; // MyApplications.jsp
    }

    @GetMapping("/status")
    public String status(HttpSession session, Model model) {
        Users student = (Users) session.getAttribute("loggedInUser");
        if (student == null) {
            return "redirect:/";
        }
        model.addAttribute("student", student);
        return "StatusNotifications"; // StatusNotifications.jsp
    }
    
//    @GetMapping("/StudentProfile")
//    public String showProfile() {
//        String email = (String) session.getAttribute("loggedInUser"); // अब यह सही चलेगा
//        if (email == null) {
//            return "redirect:/"; 
//        }
//
//        StudentProfile profile = studentProfileService.getProfileByEmail(email);
//
//        if (profile == null) {
//            // first time
//            StudentProfile temp = new StudentProfile();
//            temp.setEmail(email);
//            model.addAttribute("student", temp);
//            model.addAttribute("firstTime", true);  // flag भेज रहे हैं
//        } else {
//            //(data already hai)
//            model.addAttribute("student", profile);
//            model.addAttribute("firstTime", false);
//        }

//        return "StudentProfile"; 
//    }


//    @PostMapping("/updateProfile")
//    public String updateProfile(@ModelAttribute StudentProfile profile,
//                                HttpSession session,
//                                Model model) {
//        try {
//            String email = (String) session.getAttribute("loggedInUser");
//            if (email == null) {
//                return "redirect:/";
//            }
//
//            // हमेशा loggedInUser का email bind करो (form से आने वाला ignore करो)
//            profile.setEmail(email);
//
//            studentProfileService.saveProfile(profile);
//            
//            model.addAttribute("student", profile);
//            model.addAttribute("Successfull", "Profile updated successfully!");
//        } catch (Exception e) {
//            model.addAttribute("Error", "Failed to update profile: " + e.getMessage());
//        }
//        // reload updated data
//        return "StudentProfile"; // reload same page
//    }

}
