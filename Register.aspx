<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WAPPAssignment.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Register</h2>

        <asp:TextBox ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br /><br />

        <asp:DropDownList ID="ddlRole" runat="server">
            <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
            <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /><br /><br />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>