package an.sp.main.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "users") // better to define table name explicitly
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Column(nullable = false)
    private String role;

    @NotBlank
    @Column(unique = true, nullable = false)
    private String username;

    @Column(unique = true, nullable = false)
    @NotBlank(message = "Email can't be blank")
    @Email(message = "Invalid email format")
    private String email;

	@NotBlank
    @Column(nullable = false)
    private String password;

    // Getters and Setters
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}
