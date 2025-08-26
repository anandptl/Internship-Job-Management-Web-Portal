package an.sp.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import an.sp.main.entities.Users;
import an.sp.main.repository.UsersRepository;

@Service
public class UsersService {

	@Autowired
	private UsersRepository usersRepository;
	
	// Create a BCrypt encoder instance
    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	public boolean registerUsers(Users users) {
		try {
			
			// Check if email already exists
	        Users existingUser = usersRepository.findByEmail(users.getEmail());
	        if (existingUser != null) {
	            System.out.println("Email already registered");
	            return false; // Or throw custom exception if you want
	        }
			
			// Has the plain password before saving
			String hashedPassword = passwordEncoder.encode(users.getPassword());
	        users.setPassword(hashedPassword);
			usersRepository.save(users);
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
//	login code 
	public Users loginUsers(String email, String rawPassword, String role) {
	    Users user = usersRepository.findByEmail(email);

	    if (user != null &&
	        user.getRole().equalsIgnoreCase(role) &&   //Check role
	        passwordEncoder.matches(rawPassword, user.getPassword())) {
	        return user;
	    }

	    return null;
	}

}