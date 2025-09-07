//package an.sp.main.services;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import an.sp.main.entities.StudentProfile;
//import an.sp.main.repository.StudentProfileRepository;
//
//@Service
//public class StudentProfileService {
//
//    @Autowired
//    private StudentProfileRepository repo;
//
//    public StudentProfile getProfileByEmail(String email) {
//        return repo.findByUser_Email(email).orElse(null);
//    }
//
//    public StudentProfile saveProfile(StudentProfile profile) {
//        return repo.save(profile);
//    }
//}
//
