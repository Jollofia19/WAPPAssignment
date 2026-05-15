<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="WAPPAssignment.Courses" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Courses</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Available Courses</h2>

        <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="true"></asp:GridView>

    </form>
</body>
</html>