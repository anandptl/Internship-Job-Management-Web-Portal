package an.sp.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import an.sp.main.entities.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer>
{
	Users findByEmail(String email);
//	Users findbyRole(String role);
}