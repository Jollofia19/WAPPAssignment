<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:40px;">
            <h2>Admin Dashboard</h2>
            <p>Welcome to the CodeMaster Academy admin panel.</p>

            <div class="row">
                <div class="col-md-4">
                    <h3>Course Management</h3>
                    <p>Add, view, update and delete courses.</p>
                    <a href="ManageCourses.aspx" class="btn btn-primary">Manage Courses</a>
                </div>

                <div class="col-md-4">
                    <h3>Quiz System</h3>
                    <p>Create and manage quiz features.</p>
                    <a href="ManageQuizzes.aspx" class="btn btn-success">Manage Quizzes</a>
                </div>

                <div class="col-md-4">
                    <h3>Website Navigation</h3>
                    <p>Return to the main website.</p>
                    <a href="../Default.aspx" class="btn btn-info">Go Home</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>