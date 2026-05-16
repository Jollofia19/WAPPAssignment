<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Manage Quizzes</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:40px;">
            <h2>Manage Quizzes</h2>
            <p>Create and manage quiz questions for programming courses.</p>

            <hr />

            <h3>Add New Quiz Question</h3>

            <div class="form-group">
                <label>Course</label>
                <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                    <asp:ListItem Text="HTML Fundamentals" Value="HTML"></asp:ListItem>
                    <asp:ListItem Text="CSS Basics" Value="CSS"></asp:ListItem>
                    <asp:ListItem Text="JavaScript Introduction" Value="JavaScript"></asp:ListItem>
                    <asp:ListItem Text="Python Programming" Value="Python"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Question</label>
                <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvQuestion" runat="server"
                    ControlToValidate="txtQuestion"
                    ErrorMessage="Question is required."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Option A</label>
                <asp:TextBox ID="txtOptionA" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Option B</label>
                <asp:TextBox ID="txtOptionB" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Option C</label>
                <asp:TextBox ID="txtOptionC" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Option D</label>
                <asp:TextBox ID="txtOptionD" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Correct Answer</label>
                <asp:DropDownList ID="ddlCorrectAnswer" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Option A" Value="A"></asp:ListItem>
                    <asp:ListItem Text="Option B" Value="B"></asp:ListItem>
                    <asp:ListItem Text="Option C" Value="C"></asp:ListItem>
                    <asp:ListItem Text="Option D" Value="D"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <br />

            <asp:Button ID="btnSaveQuestion" runat="server"
                Text="Save Question"
                CssClass="btn btn-success" />

            <a href="Dashboard.aspx" class="btn btn-default">
                Back to Admin Dashboard
            </a>

            <hr />

            <h3>Existing Quiz Questions</h3>

            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Course</th>
                        <th>Question</th>
                        <th>Correct Answer</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>HTML Fundamentals</td>
                        <td>What does HTML stand for?</td>
                        <td>Option A</td>
                        <td>
                            <button type="button"
                                    class="btn btn-warning btn-sm">
                                Edit
                            </button>
                            <button type="button"
                                    class="btn btn-danger btn-sm">
                                Delete
                            </button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>