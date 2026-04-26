using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["CodeMasterConnection"].ConnectionString;

        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();

            string query = "SELECT * FROM Users WHERE Email=@Email AND PasswordHash=@Password";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Session["UserID"] = reader["UserID"].ToString();
                Session["Role"] = reader["Role"].ToString();

                if (reader["Role"].ToString() == "Admin")
                {
                    Response.Redirect("Admin/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("Courses.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invalid login credentials!";
            }
        }
    }
}