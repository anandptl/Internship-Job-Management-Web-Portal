package an.sp.main.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import an.sp.main.entities.Student;
import an.sp.main.services.StudentService;
import ch.qos.logback.core.model.Model;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import jakarta.servlet.http.HttpSession;


@Controller
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // Save student
    @PostMapping("/save-student")
    public String saveStudent(
            @RequestParam(value = "id", required = false) Long id,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("mobile") String mobile,
            @RequestParam("jobStatus") String jobStatus,
            @RequestParam(value = "designation", required = false) String designation,
            @RequestParam(value = "experience", required = false) Double experience,
            @RequestParam("skills") String skills,
            @RequestParam("qualification") String qualification,
            @RequestParam(value = "specialization", required = false) String specialization,
            @RequestParam(value = "institute", required = false) String institute,
            @RequestParam(value = "passingYear", required = false) Integer passingYear,
            @RequestParam("location") String location,
            @RequestParam(value = "salary", required = false) String salary,
            @RequestParam("jobType") String jobType,
            @RequestParam(value = "linkedin", required = false) String linkedin,
            @RequestParam(value = "github", required = false) String github,
            @RequestParam(value = "resumeFile", required = false) MultipartFile resumeFile,
            @RequestParam(value = "profilePhoto", required = false) MultipartFile profilePhoto,
            Model model
    ) {
        try {
            Student student = new Student();

            Student saved = studentService.saveStudent(student, resumeFile, profilePhoto);

            model.addAttribute("Successfull", "Profile saved successfully!");
            return "redirect:/student/" + saved.getId();  // redirect with data
        } catch (Exception e) {
            model.addAttribute("Error", "Error: " + e.getMessage());
            return "StudentProfile";
        }
    }

    // Load student by ID (for auto-fill)
    @GetMapping("/student/{id}")
    public String getStudent(@PathVariable Long id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        return "StudentProfile"; // JSP page
    }
}
