package an.sp.main.services;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import an.sp.main.entities.Student;
import an.sp.main.repository.StudentRepository;

import java.io.File;
import java.io.IOException;

@Service
public class StudentService {

    private final StudentRepository repo;

    public StudentService(StudentRepository repo) {
        this.repo = repo;
    }

    public Student saveStudent(Student student, MultipartFile resumeFile, MultipartFile profilePhoto) throws IOException {
        String uploadDir = "uploads/";
        new File(uploadDir).mkdirs();

        if (resumeFile != null && !resumeFile.isEmpty()) {
            String resumePath = uploadDir + resumeFile.getOriginalFilename();
            resumeFile.transferTo(new File(resumePath));
            student.setResumePath(resumePath);
        }

        if (profilePhoto != null && !profilePhoto.isEmpty()) {
            String photoPath = uploadDir + profilePhoto.getOriginalFilename();
            profilePhoto.transferTo(new File(photoPath));
            student.setProfilePhotoPath(photoPath);
        }

        return repo.save(student);
    }

    public Student getStudent(Long id) {
        return repo.findById(id).orElse(null);
    }
}

