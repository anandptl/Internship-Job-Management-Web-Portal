<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>SignIn & SignUp | Zidio</title>
	  <link rel="icon" type="image/png" href="/image/Zidio_logo.svg" />
      <!-- Google Font -->
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

      <!-- Font Awesome (for icons) -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

      <!-- Normalize.css -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
      <!-- Custom CSS -->
      <link rel="stylesheet" type="text/css" href="/css/style.css" />

      <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
      
      <div class="container">
        <div class="forms-container">
          <div class="signin-signup">
            <!-- Login form -->
            <form action="loginUser" method="POST" name="signinForm" class="sign-in-form">
              <h2 class="title">Login</h2>

              <!-- Pass backend messages into hidden inputs -->
              <script type="text/javascript">
                <c:if test="${not empty Successfull}">
                  Swal.fire({
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

              <div class="input-field">
                <i class="fas fa-user-tag"></i>
                <select name="role" required>
                  <option value="" disabled selected>Select Role</option>
                  <option value="STUDENT">Student</option>
                  <option value="RECRUITER">Recruiter</option>
                  <option value="ADMIN">Admin</option>
                </select>
              </div>

              <div class="input-field">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Email" name="email" required />
              </div>

              <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" name="password" id="password-input" required />
                <i class="fas fa-eye"></i>
              </div>

              <input type="submit" value="Login" class="btn solid" />

              <p class="social-text">Or Sign in with social platforms</p>
              <div class="social-media">
                <a href="#" class="social-icon"><i class="fab fa-github"></i></a>
                <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </form>

            <!-- Signup form -->
            <form action="logPage" method="POST" name="signupForm" class="sign-up-form">
              <h2 class="title">Register</h2>

              <div class="input-field">
                <i class="fas fa-user-tag"></i>
                <select name="role" required>
                  <option value="" disabled selected>Select Role</option>
                  <option value="STUDENT">Student</option>
                  <option value="RECRUITER">Recruiter</option>
                </select>
              </div>

              <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Username" name="username" required />
              </div>

              <div class="input-field">
                <i class="fas fa-envelope"></i>
                <input type="email" placeholder="Email" name="email" required />
              </div>

              <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" name="password" id="signup-password" required />
                <i class="fas fa-eye"></i>
              </div>

              <input type="submit" value="Register" class="btn solid" />

              <p class="social-text">Or Sign up with social platforms</p>
              <div class="social-media">
                <a href="#" class="social-icon"><i class="fab fa-github"></i></a>
                <a href="#" class="social-icon"><i class="fab fa-google"></i></a>
                <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </form>

          </div>
        </div>

        <div class="panels-container">
          <div class="panel left-panel">
            <div class="content">
              <img src="${pageContext.request.contextPath}/image/Zidio_logo.svg" alt="Zidio">
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio minus natus est.</p>
              <button class="btn transparent" id="sign-up-btn"><i class="fa-solid fa-id-card"></i> Register</button>
			        <a href="/homepage"><button class="btn transparent"><i class="fa-solid fa-house"></i> Home</button></a>
            </div>
            <img src="/image/log.svg" class="image" alt="">
          </div>

          <div class="panel right-panel">
            <div class="content">
              <img src="/image/Zidio_logo.svg" alt="Zidio">
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio minus natus est.</p>
              <button class="btn transparent" id="sign-in-btn"><i class="fa-solid fa-arrow-right-to-bracket"></i> Login</button>
			        <a href="/homepage"><button class="btn transparent"><i class="fa-solid fa-house"></i> Home</button></a>
            </div>
            <img src="/image/register.svg" class="image" alt="">
          </div>
        </div>
      </div>

      <script src="/js/signup.js"></script>

    </body>

    </html>