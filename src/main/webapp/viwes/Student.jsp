<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Student | Zidio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            background: #f0f2f5;
            color: #333;
            display: flex;
            min-height: 100vh;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 300px;
            background: linear-gradient(510deg, #007bff, #182848);
            color: #fff;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;   /* ✅ Pushes logout button to bottom */
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
        }

        .sidebar .logo img {
            width: 80%;
            margin: 0 auto 30px;
            display: block;
        }
        
        .sidebar a {
            text-decoration: none;
        }


        .sidebar nav button {
            width: 100%;
            background: rgba(255, 255, 255, 0.1);
            border: none;
            padding: 12px;
            margin-bottom: 10px;
            border-radius: 8px;
            font-size: 16px;
            text-align: left;
            color: #fff;
            cursor: pointer;
            transition: background 0.3s ease;
			text-decoration: none;
        }

        .sidebar nav button i {
            margin-right: 10px;
        }

        .sidebar nav button:hover,
        .sidebar nav button.active {
            background: rgba(255, 255, 255, 0.3);
        }

        /* Logout Button at bottom */
        .logout-btn {
            background: linear-gradient(135deg, #ff4b5c, #c81d25);
            font-weight: 600;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(200, 29, 37, 0.3);
            width: 100%;
            border: none;
            padding: 12px;
            font-size: 16px;
            text-align: left;
            color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            text-decoration: none;
        }

        .logout-btn i {
            margin-right: 10px;
        }

        .logout-btn:hover {
            background: linear-gradient(135deg, #ff1e36, #990f14);
            box-shadow: 0 6px 18px rgba(153, 15, 20, 0.5);
            transform: translateY(-2px);
        }

        .logout-btn:active {
            transform: translateY(1px) scale(0.98);
            box-shadow: 0 3px 8px rgba(153, 15, 20, 0.4);
        }

        .main-content {
            flex: 1;
            padding: 40px;
            overflow-y: auto;
            background: #f4f6fa;
            text-align: -webkit-center;
        }

        .profile-card {
            width: 100%;
            max-width: 800px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .profile-pic {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #f0f0f0;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .stats-cards {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 500px) {
            .sidebar {
                position: fixed;
                width: 100%;
                height: auto;
                flex-direction: row;
                justify-content: space-around;
                z-index: 999;
            }

            .main-content {
                margin-top: 80px;
            }

            .stats-cards {
                grid-template-columns: 1fr;
            }
        }

        /* Active state */
        .sidebar nav button:hover {
            background: rgba(255, 255, 255, 0.3);
            box-shadow: inset 4px 0 0 #ffcc00;
        }

        .logout-btn:hover {
            box-shadow: inset 4px 0 0 #ffcc00;
        }

        @media (max-width: 500px) {
            .sidebar nav button,
            .logout-btn {
                font-size: 0;
                justify-content: center;
            }

            .sidebar nav button i,
            .logout-btn i {
                margin-right: 0;
                font-size: 18px;
            }
        }
    </style>
</head>

<body>
    <!-- Sidebar -->
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
