<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard | Zidio</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./css/admin.css">
</head>

<body>
    <div class="container">
        <!-- Sidebar -->
        <aside class="sidebar">
		<div>
            <div class="logo">
                <img src="./image/Zidio_logo.svg" alt="Zidio Logo" />
            </div>
            <nav>
                <button type="button" class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</button>
                <button type="button"><i class="fas fa-user-graduate"></i> Manage Users</button>
                <button type="button"><i class="fas fa-user-tie"></i> Manage Recruiters</button>
                <button type="button"><i class="fas fa-briefcase"></i> Manage Jobs</button>
                <button type="button"><i class="fas fa-chart-line"></i> Reports</button>
                <button type="button"><i class="fas fa-cog"></i> Settings</button>
            </nav>
		</div>
			<button class="logout-btn"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></button>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <!-- Stats Cards -->
            <section class="stats-cards">
                <div class="card">
                    <i class="fas fa-user-graduate"></i>
                    <h3>Total Users</h3>
                    <p>1,250</p>
                </div>
                <div class="card">
                    <i class="fas fa-user-tie"></i>
                    <h3>Total Recruiters</h3>
                    <p>320</p>
                </div>
                <div class="card">
                    <i class="fas fa-briefcase"></i>
                    <h3>Total Jobs</h3>
                    <p>540</p>
                </div>
                <div class="card">
                    <i class="fas fa-chart-line"></i>
                    <h3>Reports</h3>
                    <p>12</p>
                </div>
            </section>

            <!-- Table Section -->
            <section class="table-section">
                <h2>Recent Users</h2>
                <div class="table-container">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#1001</td>
                                <td>John Doe</td>
                                <td>john@example.com</td>
                                <td>User</td>
                                <td><span class="status active">Active</span></td>
                                <td><button class="action-btn">View</button></td>
                            </tr>
                            <tr>
                                <td>#1002</td>
                                <td>Sarah Lee</td>
                                <td>sarah@example.com</td>
                                <td>Recruiter</td>
                                <td><span class="status inactive">Inactive</span></td>
                                <td><button class="action-btn">View</button></td>
                            </tr>
                            <tr>
                                <td>#1003</td>
                                <td>Mark Taylor</td>
                                <td>mark@example.com</td>
                                <td>User</td>
                                <td><span class="status active">Active</span></td>
                                <td><button class="action-btn">View</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </main>
    </div>
</body>

</html>
