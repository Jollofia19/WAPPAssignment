<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Quiz</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="container" style="margin-top:40px;">
        <h2>HTML Fundamentals Quiz</h2>
        <p>Answer the questions below and submit your quiz.</p>

        <hr />

        <h4>1. What does HTML stand for?</h4>
        <asp:RadioButtonList ID="q1" runat="server">
            <asp:ListItem Value="1">Hyper Text Markup Language</asp:ListItem>
            <asp:ListItem Value="0">High Tech Modern Language</asp:ListItem>
            <asp:ListItem Value="0">Home Tool Markup Language</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rfvQ1" runat="server"
            ControlToValidate="q1"
            ErrorMessage="Please answer question 1."
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br />

        <h4>2. Which tag is used to create a paragraph?</h4>
        <asp:RadioButtonList ID="q2" runat="server">
            <asp:ListItem Value="0">&lt;h1&gt;</asp:ListItem>
            <asp:ListItem Value="1">&lt;p&gt;</asp:ListItem>
            <asp:ListItem Value="0">&lt;div&gt;</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rfvQ2" runat="server"
            ControlToValidate="q2"
            ErrorMessage="Please answer question 2."
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br />

        <h4>3. Which tag is used to insert an image?</h4>
        <asp:RadioButtonList ID="q3" runat="server">
            <asp:ListItem Value="0">&lt;link&gt;</asp:ListItem>
            <asp:ListItem Value="0">&lt;src&gt;</asp:ListItem>
            <asp:ListItem Value="1">&lt;img&gt;</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rfvQ3" runat="server"
            ControlToValidate="q3"
            ErrorMessage="Please answer question 3."
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br />

        <asp:Button ID="btnSubmitQuiz" runat="server" Text="Submit Quiz"
            CssClass="btn btn-primary" OnClick="btnSubmitQuiz_Click" />

        <a href="Default.aspx" class="btn btn-default">Back Home</a>

        <script runat="server">
            protected void btnSubmitQuiz_Click(object sender, EventArgs e)
            {
                int score = 0;

                score += int.Parse(q1.SelectedValue);
                score += int.Parse(q2.SelectedValue);
                score += int.Parse(q3.SelectedValue);

                Response.Redirect("QuizResult.aspx?score=" + score);
            }
        </script>
    </div>
</form>
</body>
</html>