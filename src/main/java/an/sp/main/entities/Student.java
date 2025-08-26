package an.sp.main.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;
    private String mobile;

    private String jobStatus;
    private String designation;
    private Double experience;
    private String skills;

    private String qualification;
    private String specialization;
    private String institute;
    private Integer passingYear;

    private String location;
    private String salary;
    private String jobType;

    private String linkedin;
    private String github;

    private String resumePath;
    private String profilePhotoPath;
}
