using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Booking : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Booking(MOVIE_NAME,CITY,THEATER_NAME,DATE,TIME,NO_OF_SEATS,NET_PAYABLE)Values (@MOVIE_NAME,@CITY,@THEATER_NAME,@DATE,@TIME,@NO_OF_SEATS,@NET_PAYABLE)", con);
        cmd.Parameters.AddWithValue("@MOVIE_NAME", DDLMoviesName.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@CITY", DDLCity.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@THEATER_NAME", DDLTheaterName.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@DATE",TextBoxDate.Text );
        cmd.Parameters.AddWithValue("@TIME", DDLTime.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@NO_OF_SEATS", TextBox1.Text);
        cmd.Parameters.AddWithValue("@NET_PAYABLE", TextBoxNetPayable.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        Response.Redirect("Payment.aspx");
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        DDLMoviesName.Text = "";
        DDLCity.Text = "";
        DDLTheaterName.Text = "";
        TextBoxDate.Text = "";
        DDLTime.Text = "";
        TextBox1.Text = "";
        TextBoxNetPayable.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        double a = double.Parse(TextBox1.Text) * 100;
        TextBoxNetPayable.Text = a.ToString();


    }
    
}
 