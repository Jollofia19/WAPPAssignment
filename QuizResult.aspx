<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Quiz Result</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="container" style="margin-top:40px;">
        <h2>Quiz Result</h2>

        <asp:Label ID="lblScore" runat="server" Font-Size="Large"></asp:Label>
        <br /><br />
        <asp:Label ID="lblStatus" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>

        <br /><br />

        <a href="Quiz.aspx" class="btn btn-primary">Retake Quiz</a>
        <a href="Default.aspx" class="btn btn-default">Back Home</a>

        <script runat="server">
            protected void Page_Load(object sender, EventArgs e)
            {
                int score = 0;

                if (Request.QueryString["score"] != null)
                {
                    int.TryParse(Request.QueryString["score"], out score);
                }

                lblScore.Text = "Your Score: " + score + " / 3";

                if (score >= 2)
                {
                    lblStatus.Text = "PASSED";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblStatus.Text = "FAILED";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        </script>
    </div>
</form>
</body>
</html>