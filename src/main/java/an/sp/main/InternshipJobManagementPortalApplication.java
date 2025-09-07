package an.sp.main;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"an.sp.main.controller"})
@ComponentScan(basePackages = {"an.sp.main.config"})
@ComponentScan(basePackages = {"an.sp.main.entities"})
@ComponentScan(basePackages = {"an.sp.main.repository"})
@ComponentScan(basePackages = {"an.sp.main.services"})
public class InternshipJobManagementPortalApplication {

	public static void main(String[] args) {
		SpringApplication.run(InternshipJobManagementPortalApplication.class, args);
	}
	

}
