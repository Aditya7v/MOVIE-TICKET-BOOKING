using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Admin_new_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBoxDateOfBirth_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into UserRegistration(USERNAME,EMAILID,PASSWORD,CONFIRM_PASSWORD,GENDER,DATE_OF_BIRTH,MOBILE_NO)Values (@USERNAME,@EMAILID,@PASSWORD,@CONFIRM_PASSWORD,@GENDER,@DATE_OF_BIRTH,@MOBILE_NO)", con);

        cmd.Parameters.AddWithValue("@USERNAME", TextBoxAdminName.Text);
        cmd.Parameters.AddWithValue("@EMAILID", TextBoxEmailId.Text);
        cmd.Parameters.AddWithValue("@PASSWORD", TextBoxPassword.Text);
        cmd.Parameters.AddWithValue("@CONFIRM_PASSWORD", TextBoxConfirmPassword.Text);
        cmd.Parameters.AddWithValue("@GENDER", RadioButtonList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@MOBILE_NO", TextBoxMobileNo.Text);
        cmd.Parameters.AddWithValue("@DATE_OF_BIRTH", TextBoxDateOfBirth.Text);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

    }
    protected void TextBoxDateOfBirth_TextChanged1(object sender, EventArgs e)
    {

    }
}