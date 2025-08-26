package an.sp.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import an.sp.main.entities.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
}

