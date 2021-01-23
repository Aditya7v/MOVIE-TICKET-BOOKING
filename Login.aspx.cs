using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
    con.Open();
    SqlCommand cmd = new SqlCommand("select * from UserRegistration where USERNAME =@USERNAME and PASSWORD=@PASSWORD",con);
    cmd.Parameters.AddWithValue("@USERNAME", TextBoxUserName.Text);
    cmd.Parameters.AddWithValue("@PASSWORD", TextBoxPassword.Text);
    SqlDataAdapter da = new SqlDataAdapter(cmd);
    DataTable dt = new DataTable();
    da.Fill(dt);
    if(dt.Rows.Count>0)
        {
            Response.Write("<script>alert('Log In Successfully')</script>");
            Server.Transfer("Booking.aspx");
        }
    else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
           "<script language='javascript'>alert('Invalid Username or Password')</script>");
    }
}
}
