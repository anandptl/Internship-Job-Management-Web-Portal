<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Student | Zidio</title>
	<link rel="icon" type="image/png" href="/image/Zidio_logo.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- ✅ Mobile Responsive -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            background: #f0f2f5;
            color: #333;
            display: flex;
            min-height: 100vh;
        }

        /* Hidden checkbox for sidebar toggle */
        #menu-toggle {
            display: none;
        }
		
		.menu-btn {
		  position: fixed;
		  top: 15px;
		  left: 15px;
		  background: #007bff;
		  color: #fff;
		  font-size: 22px;
		  padding: 10px 12px;
		  border-radius: 6px;
		  cursor: pointer;
		  z-index: 1100;
		  display: none; /* show only on mobile */
		}

        /* Sidebar */
        .sidebar {
            width: 20%;
            background: linear-gradient(510deg, #007bff, #182848);
            color: #fff;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* ✅ logout always bottom */
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .sidebar .logo img {
            width: 80%;
            margin: 0 auto 30px;
            display: block;
        }

        .sidebar nav a {
            display: block;
            width: 100%;
            background: rgba(255, 255, 255, 0.1);
            padding: 12px;
            margin-bottom: 10px;
            border-radius: 8px;
            font-size: 16px;
            color: #fff;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .sidebar nav a i {
            margin-right: 10px;
        }

        .sidebar nav a:hover,
        .sidebar nav a.active {
            background: rgba(255, 255, 255, 0.3);
        }

        /* Logout Button */
        .logout-btn {
            background: linear-gradient(135deg, #ff4b5c, #c81d25);
            font-weight: 600;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(200, 29, 37, 0.3);
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            margin-top: auto; /* ✅ pushes logout to bottom */
        }

        .logout-btn i {
            margin-right: 10px;
        }

        .logout-btn:hover {
            background: linear-gradient(135deg, #ff1e36, #990f14);
            transform: translateY(-2px);
        }

        /* Main Content */
        .main-content {
            flex: 1;
            padding: 40px;
            overflow-y: auto;
            background: #f4f6fa;
        }

        .profile-card {
            width: 100%;
            max-width: 800px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: auto;
        }

        .profile-pic {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #f0f0f0;
        }

        /* Responsive Sidebar */
        @media (max-width: 768px) {
            .menu-btn {
                display: block;
            }

            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                height: 100%;
                transform: translateX(-100%);
                z-index: 1000;
            }

            #menu-toggle:checked~.sidebar {
                transform: translateX(0);
            }

            .main-content {
                padding: 20px;
                margin-top: 60px;
            }
        }

        @media (max-width: 500px) {
            .sidebar nav a,
            .logout-btn {
                font-size: 0;
                justify-content: center;
            }

            .sidebar nav a i,
            .logout-btn i {
                margin-right: 0;
                font-size: 18px;
            }
        }
		.overlay {
		  display: none;
		}
		.logout-btn:hover {
		    background: linear-gradient(135deg, #ff1e36, #990f14);
		    box-shadow: inset 4px 0 0 #ffcc00, 0 6px 18px rgba(153, 15, 20, 0.5);
		    transform: translateY(-2px);
		}

		.logout-btn:active {
		    transform: translateY(1px) scale(0.98);
		    box-shadow: 0 3px 8px rgba(153, 15, 20, 0.4);
		}

    </style>
</head>

<body>
    <!-- Hidden checkbox for toggle -->
    <input type="checkbox" id="menu-toggle" hidden>
    <label for="menu-toggle" class="menu-btn"><i class="fas fa-bars"></i></label>
	<label for="menu-toggle" class="overlay"></label>
	<script>
	    <c:if test="${not empty Successfull}">
	        Swal.fire({
	            icon: 'success',
	            title: 'Success',
	            text: '${Successfull}',
	            confirmButtonColor: '#3085d6',
	            timer: 3000,
	            timerProgressBar: true
	        });
	    </c:if>

	    <c:if test="${not empty Error}">
	        Swal.fire({
	            icon: 'error',
	            title: 'Error',
	            text: '${Error}',
	            confirmButtonColor: '#d33',
	            timer: 3000,
	            timerProgressBar: true
	        });
	    </c:if>
	</script>

	<%
		   if (session.getAttribute("loggedInUser") == null) {
		       response.sendRedirect(request.getContextPath() + "/");
		       return;
		   }
		%>
    <!-- Sidebar -->
    <div class="sidebar">
        <aside style="flex:1; display:flex; flex-direction:column;">
            <div>
                <div class="logo">
                    <img src="./image/Zidio_logo.svg" alt="Zidio Logo" />
                </div>
                <nav>
					<a href="/dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
					<a href="/StudentProfile"><i class="fas fa-user-graduate"></i> Manage Profile</a>
					<a href="/applyJob"><i class="fas fa-user-tie"></i> Apply for Job</a>
					<a href="/myApplications"><i class="fas fa-briefcase"></i> My Applications</a>
					<a href="/status"><i class="fas fa-chart-line"></i> Status/Notifications</a>
                </nav>
            </div>
            <a href="/logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </aside>
    </div>

    <!-- Main content -->
    <main class="main-content">
        <div class="profile-card">
            <div class="text-center mb-4">
                <img src="/image/man.svg" alt="Profile Picture" class="profile-pic">
                <h3 class="mt-3">${student.username}</h3>
                <p class="text-muted">${student.email}</p>
            </div>
        </div>
    </main>
</body>
</html>
