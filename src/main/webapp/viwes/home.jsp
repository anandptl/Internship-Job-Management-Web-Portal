<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zidio - Smart Job Portal</title>
	<link rel="icon" type="image/png" href="/image/Zidio_logo.svg" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Styling -->
    <link rel="stylesheet" type="text/css" href="./css/home.css">
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold text-white" href="/">
                <img src="./image/Zidio_logo.svg" alt="Zidio Logo" style="width: 35%;"/>
            </a>

            <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-lg-center">

                    <!-- Home -->
                    <li class="nav-item">
                        <a class="nav-link text-white fw-medium d-flex align-items-center" href="/">
                            <i class="bi bi-house-door-fill me-2"></i> Home
                        </a>
                    </li>

                    <!-- Jobs -->
                    <li class="nav-item">
                        <a class="nav-link text-white fw-medium d-flex align-items-center" href="#jobs">
                            <i class="bi bi-briefcase-fill me-2"></i> Jobs
                        </a>
                    </li>

                    <!-- Contact -->
                    <li class="nav-item">
                        <a class="nav-link text-white fw-medium d-flex align-items-center" href="#contact">
                            <i class="bi bi-envelope-fill me-2"></i> Contact
                        </a>
                    </li>

                    <!-- Login/Register Button -->
                    <li class="nav-item ms-2">
                        <a class="btn btn-warning fw-semibold px-4 py-2 rounded-pill shadow-sm d-flex align-items-center"
                            href="/login">
                            <i class="bi bi-box-arrow-in-right me-2"></i> Login / Register
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>

    <!-- Add padding to avoid content hidden under fixed navbar -->
    <div style="padding-top: 80px;"></div>


    <!-- Hero Section -->
    <section class="hero text-center py-5 bg-light">
        <div class="container">
            <h1 class="fw-bold">Welcome to Zidio</h1>
            <p class="lead">Connecting Students, Recruiters, and Admins on one smart platform.</p>
            <a href="Signup-Signin.jsp" class="btn btn-primary btn-lg">Get Started</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card shadow-sm h-100 text-center">
                        <div class="card-body">
                            <i class="bi bi-mortarboard-fill text-primary display-4 mb-3"></i>
                            <h5>Student Portal</h5>
                            <p>Apply for jobs, build your profile, and connect with recruiters instantly.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-sm h-100 text-center">
                        <div class="card-body">
                            <i class="bi bi-building-fill text-success display-4 mb-3"></i>
                            <h5>Recruiter Dashboard</h5>
                            <p>Post jobs, review applicants, and hire top talent with ease.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card shadow-sm h-100 text-center">
                        <div class="card-body">
                            <i class="bi bi-person-gear text-danger display-4 mb-3"></i>
                            <h5>Admin Controls</h5>
                            <p>Manage users, monitor system activities, and keep everything secure.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-light pt-5 pb-3 mt-5" id="contact">
        <div class="container">
            <div class="row">

                <!-- Brand / About -->
                <div class="col-md-4 mb-4">
                    <h5 class="fw-bold"><i class="bi bi-briefcase-fill me-2"></i> Zidio</h5>
                    <p class="text-muted">
                        Zidio is a smart job portal helping students, recruiters, and admins connect seamlessly.
                    </p>
                </div>

                <!-- Quick Links -->
                <div class="col-md-4 mb-4">
                    <h5 class="fw-bold">Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="/" class="text-light text-decoration-none"><i
                                    class="bi bi-house-door-fill me-2"></i> Home</a></li>
                        <li><a href="#jobs" class="text-light text-decoration-none"><i
                                    class="bi bi-briefcase-fill me-2"></i> Jobs</a></li>
                        <li><a href="#contact" class="text-light text-decoration-none"><i
                                    class="bi bi-envelope-fill me-2"></i> Contact</a></li>
                    </ul>
                </div>

                <!-- Social / Contact -->
                <div class="col-md-4 mb-4">
                    <h5 class="fw-bold">Connect With Us</h5>
                    <div class="d-flex gap-3 mb-3">
                        <a href="#" class="text-light fs-4"><i class="bi bi-facebook"></i></a>
                        <a href="#" class="text-light fs-4"><i class="bi bi-twitter"></i></a>
                        <a href="#" class="text-light fs-4"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="text-light fs-4"><i class="bi bi-instagram"></i></a>
                    </div>
                    <p class="mb-1"><i class="bi bi-telephone-fill me-2"></i> +91 8081867443</p>
                    <p class="mb-0"><i class="bi bi-envelope-fill me-2"></i> anandkp0852@gmail.com</p>
                </div>

            </div>

            <hr class="border-light">

            <!-- Bottom -->
            <div class="text-center">
                <p class="mb-0">&copy; 2025 Zidio. All Rights Reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</body>

</html>
