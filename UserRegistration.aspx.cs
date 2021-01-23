using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class UserRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into UserRegistration(USERNAME,EMAIL_ID,PASSWORD,CONFIRM_PASSWORD,GENDER,DATE_OF_BIRTH,MOBILE_NO)Values (@USERNAME,@EMAIL_ID,@PASSWORD,@CONFIRM_PASSWORD,@GENDER,@DATE_OF_BIRTH,@MOBILE_NO)", con);
        cmd.Parameters.AddWithValue("@USERNAME", TextBoxUserName.Text);
        cmd.Parameters.AddWithValue("@EMAIL_ID", TextBoxEmailId.Text);
        cmd.Parameters.AddWithValue("@PASSWORD", TextBoxPassword.Text);
        cmd.Parameters.AddWithValue("@CONFIRM_PASSWORD", TextBoxConfirmPassword.Text);
        cmd.Parameters.AddWithValue("@GENDER", RadioButtonList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@DATE_OF_BIRTH", TextBoxDateOfBirth.Text);
        cmd.Parameters.AddWithValue("@MOBILE_NO",TextBoxMobileNo.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
      
           ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Order Place Successfully!!')</script>");
        Response.Redirect("Login.aspx");
      
        
}
}