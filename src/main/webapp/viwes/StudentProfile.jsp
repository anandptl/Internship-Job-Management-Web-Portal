<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Student Profile | Zidio</title>
    <!-- Font Awesome CDN (version 6.4.0) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/css/StudentProfile.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body>
	<%
	   if (session.getAttribute("loggedInUser") == null) {
	       response.sendRedirect(request.getContextPath() + "/");
	       return;
	   }
	%>
    <div class="container">
		<!-- Sidebar -->
		    <aside class="sidebar">
		        <div>
		            <div class="logo">
		                <img src="./image/Zidio_logo.svg" alt="Zidio Logo" />
		            </div>
					<nav>
						<button type="button"><i class="fas fa-tachometer-alt"></i> Dashboard</button>
						<button type="button"><i class="fas fa-user-graduate"></i> Manage Users</button>
						<button type="button"><i class="fas fa-user-tie"></i> Manage Recruiters</button>
						<button type="button"><i class="fas fa-briefcase"></i> Manage Jobs</button>
						<button type="button"><i class="fas fa-chart-line"></i> Reports</button>
						<button type="button"><i class="fas fa-cog"></i> Settings</button>
					</nav>
		        </div>
		        <!-- ✅ Logout fixed at bottom -->
		        <button class="logout-btn"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></button>
		    </aside>
	
        <main class="main-content">
            <!-- Profile Section -->
            <section id="profile" class="content-section active">

                <script>
                    // Check for Spring Boot messages from Model
					    <c:if test="${not empty Successfull}">
							        Swal.fire(
							          icon: 'success',
							          title: 'Success',
							          text: '${Successfull}',
							          confirmButtonColor: '#3085d6'
							        });
							    </c:if>

							    <c:if test="${not empty Error}">
							        Swal.fire({
							          icon: 'error',
							          title: 'Error',
							          text: '${Error}',
							          confirmButtonColor: '#d33'
							        });
							    </c:if>
                </script>

                <form id="profile-form" action="/updateProfile" method="post" enctype="multipart/form-data">
                    <h2>Basic Information</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="fullname" class="required">Full Name</label>
                            <input type="text" id="fullname" name="name" placeholder="Anan* P*a**l"
                                value="${student.username}" required>
                        </div>

                        <div class="input-group">
                            <label for="email" class="required">Email Address</label>
                            <input type="email" id="email" name="email" placeholder="anan*******@gmail.com"
                                value="${student.email}" required>
                        </div>

                        <div class="input-group">
                            <label for="mobile" class="required">Mobile Number</label>
                            <input type="tel" id="mobile" name="mobile" placeholder="8081XXXXXX" pattern="[0-9]{10}"
                                maxlength="10" required>
                        </div>
                    </div>

                    <h2>Professional Details</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="resume" class="required">Resume</label>
                            <input type="url" id="resume" name="resumeFile" placeholder="https://drive.google.com/file/d/1ej-Lsr27crYvpljk2JY7yjL1/view?usp=drive_link"required>
                        </div>

                        <div class="input-group">
                            <label for="jobStatus" class="required">Current Job Status</label>
                            <select id="jobStatus" name="jobStatus" required>
                                <option value="" disabled selected>Select your status</option>
                                <option>Fresher</option>
                                <option>Employed</option>
                                <option>Unemployed</option>
                                <option>Self-employed</option>
                            </select>
                        </div>

                        <div class="input-group">
                            <label for="designation">Current Role/Designation</label>
                            <input type="text" id="designation" name="designation" placeholder="e.g. Java Developer">
                        </div>

                        <div class="input-group">
                            <label for="experience">Experience (in years)</label>
                            <input type="number" id="experience" name="experience" placeholder="0" min="0" max="50"
                                step="0.5">
                        </div>

                        <div class="input-group">
                            <label for="skills" class="required">Key Skills</label>
                            <input type="text" id="skills" name="skills" placeholder="e.g. Java, Python, React"
                                required>
                        </div>
                    </div>

                    <h2>Education Details</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="qualification" class="required">Highest Qualification</label>
                            <select id="qualification" name="qualification" required>
                                <option value="" disabled selected>Select highest degree</option>
                                <option>High School</option>
                                <option>Diploma</option>
                                <option>Bachelor's Degree</option>
                                <option>Master's Degree</option>
                                <option>PhD</option>
                                <option>Other</option>
                            </select>
                        </div>

                        <div class="input-group">
                            <label for="specialization">Specialization</label>
                            <input type="text" id="specialization" name="specialization"
                                placeholder="e.g. Computer Science">
                        </div>

                        <div class="input-group">
                            <label for="institute">University/Institute</label>
                            <input type="text" id="institute" name="institute" placeholder="e.g. University of Delhi">
                        </div>

                        <div class="input-group">
                            <label for="passingYear">Passing Year</label>
                            <input type="number" id="passingYear" name="passingYear" placeholder="2020" min="1980"
                                max="2099">
                        </div>
                    </div>

                    <h2>Job Preferences</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="location" class="required">Preferred Location(s)</label>
                            <input type="text" id="location" name="location" placeholder="e.g. Bangalore, Remote"
                                required>
                        </div>

                        <div class="input-group">
                            <label for="salary">Expected Salary</label>
                            <div style="display: flex;">
                                <select name="currency"
                                    style="width: 20%; border-top-right-radius: 0; border-bottom-right-radius: 0;">
                                    <option value="INR">&#8377;</option>
                                    <option value="USD">&#36;</option>
                                    <option value="EUR">&#8364;</option>
                                </select>

                                <input type="text" id="salary" name="salary" placeholder="e.g. 8.5"
                                    style="width: 57%; border-radius: 0;">

                                <select name="salaryUnit"
                                    style="width: 20%; border-top-left-radius: 0; border-bottom-left-radius: 0;">
                                    <option>LPA</option>
                                    <option>per month</option>
                                </select>
                            </div>
                        </div>

                        <div class="input-group">
                            <label for="jobType" class="required">Job Type</label>
                            <select id="jobType" name="jobType" required>
                                <option value="" disabled selected>Select preferred type</option>
                                <option>Full-time</option>
                                <option>Part-time</option>
                                <option>Contract</option>
                                <option>Internship</option>
                                <option>Remote</option>
                                <option>Hybrid</option>
                            </select>
                        </div>
                    </div>

                    <h2>Additional Information</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="profilePhoto">Profile Photo</label>
                            <input type="url" id="profilePhoto" name="profilePhoto" placeholder="https://drive.google.com/file/-Lsr27crYvpljk2JY7yjL1/view?usp=drive_link">
                        </div>

                        <div class="input-group">
                            <label for="linkedin">LinkedIn Profile</label>
                            <input type="url" id="linkedin" name="linkedin"
                                placeholder="https://linkedin.com/in/yourname">
                        </div>

                        <div class="input-group">
                            <label for="github">GitHub Profile</label>
                            <input type="url" id="github" name="github" placeholder="https://github.com/yourname">
                        </div>
                    </div>

                    <div class="mt-4" style="text-align: center;">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save"></i> Save Profile
                        </button>
                    </div>
                </form>
            </section>
        </main>

    </div>

</body>

</html>