<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Recruiter Profile | Zidio</title>
	<link rel="icon" type="image/png" href="/image/Zidio_logo.svg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/css/StudentProfile.css">
</head>

<body>
    <div class="container">
		<aside class="sidebar">
		    <div>
		        <div class="logo">
		            <img src="./image/Zidio_logo.svg" alt="Zidio Logo" />
		        </div>
				<nav>
					<button type="button"><i class="fas fa-tachometer-alt"></i> Dashboard</button>
					<a href="/StudentProfile"><button type="button"><i class="fas fa-user-graduate"></i> Manage Profile</button></a>
					<a href=""><button type="button"><i class="fas fa-user-tie"></i> Apply for job </button></a>
					<a href=""><button type="button"><i class="fas fa-briefcase"></i> My Application</button></a>
					<a href=""><button type="button"><i class="fas fa-chart-line"></i> Status or notification</button></a>
				</nav>
		    </div>
		    <!-- ✅ Logout fixed at bottom -->
		    <a href="/logout"><button class="logout-btn"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></button></a>
		</aside>

        <main class="main-content">
            <section id="profile" class="content-section active">
                <form id="profile-form" action="updateRecruiter.jsp" method="post" enctype="multipart/form-data">
                    
                    <!-- Basic Information -->
                    <h2>Basic Information</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="fullname" class="required">Full Name</label>
                            <input type="text" id="fullname" name="name" placeholder="John Doe" value="${Recruiter.name}" required>
                        </div>
                        <div class="input-group">
                            <label for="email" class="required">Email Address</label>
                            <input type="email" id="email" name="email" placeholder="john@company.com" value="${Recruiter.email}" required>
                        </div>
                        <div class="input-group">
                            <label for="mobile" class="required">Mobile Number</label>
                            <input type="tel" id="mobile" name="mobile" placeholder="8081XXXXXX" pattern="[0-9]{10}" maxlength="10" required>
                        </div>
                        <div class="input-group">
                            <label for="profilePhoto">Profile Photo</label>
                            <div class="file-upload">
                                <input type="file" id="profilePhoto" name="profilePhoto" accept="image/*">
                                <label for="profilePhoto" class="file-upload-label">
                                    <i class="fas fa-camera"></i>
                                    <span>Upload Photo</span>
                                    <div class="file-info">JPG or PNG (Max 2MB)</div>
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Company Information -->
                    <h2>Company Information</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="companyName" class="required">Company Name</label>
                            <input type="text" id="companyName" name="companyName" placeholder="Zidio Technologies" value="${Recruiter.companyName}" required>
                        </div>
                        <div class="input-group">
                            <label for="companyWebsite">Company Website</label>
                            <input type="url" id="companyWebsite" name="companyWebsite" placeholder="https://www.company.com" value="${Recruiter.companyWebsite}">
                        </div>
                        
                        <div class="input-group">
                            <label for="companyAddress">Company Address</label>
                            <textarea id="companyAddress" name="companyAddress" rows="3" placeholder="123 Street, City, State">${Recruiter.companyAddress}</textarea>
                        </div>
                        <div class="input-group">
                            <label for="industryType" class="required">Industry Type</label>
                            <select id="industryType" name="industryType" required>
                                <option value="" disabled selected>Select Industry</option>
                                <option>IT</option>
                                <option>Finance</option>
                                <option>Healthcare</option>
                                <option>Manufacturing</option>
                                <option>Education</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>

                    <!-- Social & Branding -->
                    <h2>Social & Branding</h2>
                    <div class="form-grid">
                        <div class="input-group">
                            <label for="linkedinProfile">LinkedIn Profile</label>
                            <input type="url" id="linkedinProfile" name="linkedinProfile" placeholder="https://linkedin.com/in/username">
                        </div>
                        <div class="input-group">
                            <label for="companyLinkedIn">Company LinkedIn Page</label>
                            <input type="url" id="companyLinkedIn" name="companyLinkedIn" placeholder="https://linkedin.com/company/xyz">
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
