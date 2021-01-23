using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Feedback1(USERNAME,EMAIL_ID,MOBILE_NO,SUBJECT,COMMENT)Values (@USERNAME,@EMAIL_ID,@MOBILE_NO,@SUBJECt,@COMMENT)", con);

        cmd.Parameters.AddWithValue("@USERNAME", TextBoxUserName.Text);
        cmd.Parameters.AddWithValue("@EMAIL_ID", TextBoxEmailId.Text);
        cmd.Parameters.AddWithValue("@MOBILE_NO", TextBoxMobileNo.Text);

        cmd.Parameters.AddWithValue("@SUBJECT", TextBoxSubject.Text);
        cmd.Parameters.AddWithValue("@COMMENT", TextBoxComment.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

     Response.Redirect("AfterFeedBack.aspx");
        }
    }
