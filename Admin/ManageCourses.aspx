<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Courses</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:40px;">
            <h2>Manage Courses</h2>
            <p>Admin can add and manage programming courses here.</p>

            <hr />

            <h3>Add New Course</h3>

            <div class="form-group">
                <label>Course Title</label>
                <asp:TextBox ID="txtCourseTitle" runat="server" CssClass="form-control" placeholder="Example: HTML Fundamentals"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCourseTitle" runat="server"
                    ControlToValidate="txtCourseTitle"
                    ErrorMessage="Course title is required."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Category</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                    <asp:ListItem Text="-- Select Category --" Value=""></asp:ListItem>
                    <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
                    <asp:ListItem Text="CSS" Value="CSS"></asp:ListItem>
                    <asp:ListItem Text="JavaScript" Value="JavaScript"></asp:ListItem>
                    <asp:ListItem Text="Python" Value="Python"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server"
                    ControlToValidate="ddlCategory"
                    InitialValue=""
                    ErrorMessage="Category is required."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Description</label>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Description is required."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Difficulty</label>
                <asp:DropDownList ID="ddlDifficulty" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                    <asp:ListItem Text="Advanced" Value="Advanced"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <br />

            <asp:Button ID="btnAddCourse" runat="server" Text="Add Course" CssClass="btn btn-primary" />
            <a href="Dashboard.aspx" class="btn btn-default">Back to Admin Dashboard</a>

            <hr />

            <h3>Existing Courses</h3>

            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Course Title</th>
                        <th>Category</th>
                        <th>Difficulty</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>HTML Fundamentals</td>
                        <td>HTML</td>
                        <td>Beginner</td>
                        <td>Published</td>
                        <td>
                            <button type="button" class="btn btn-warning btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>CSS Basics</td>
                        <td>CSS</td>
                        <td>Beginner</td>
                        <td>Published</td>
                        <td>
                            <button type="button" class="btn btn-warning btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>JavaScript Introduction</td>
                        <td>JavaScript</td>
                        <td>Intermediate</td>
                        <td>Draft</td>
                        <td>
                            <button type="button" class="btn btn-warning btn-sm">Edit</button>
                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>